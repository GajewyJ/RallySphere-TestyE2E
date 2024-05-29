import '@testing-library/jest-dom';
import { render, fireEvent, screen } from '@testing-library/react';
import Modal from './index';

describe('Modal component', () => {
    beforeAll(() => {
        const modalRoot = document.createElement('div');
        modalRoot.setAttribute('id', 'modal-root');
        document.body.appendChild(modalRoot);
    });

    afterAll(() => {
        const modalRoot = document.getElementById('modal-root');
        if (modalRoot) {
            document.body.removeChild(modalRoot);
        }
    });
    
    it('renders correctly', () => {
        const onClose = jest.fn();
        render(<Modal title="Test Modal" onClose={onClose}>Test Content</Modal>);
        
        const titleElement = screen.getByText('Test Modal');
        expect(titleElement).toBeInTheDocument();

        const bodyElement = screen.getByText('Test Content');
        expect(bodyElement).toBeInTheDocument();

        const closeButton = screen.getByText('×');
        fireEvent.click(closeButton);
        expect(onClose).toHaveBeenCalled();
    });

    it('closes on overlay click', () => {
        const onClose = jest.fn();
        render(<Modal title="Test Modal" onClose={onClose}>Test Content</Modal>);

        const overlay = screen.getByRole('presentation');
        fireEvent.click(overlay);
        expect(onClose).toHaveBeenCalled();
    });

    it('does not close on modal content click', () => {
        const onClose = jest.fn();
        render(<Modal title="Test Modal" onClose={onClose}>Test Content</Modal>);

        const modalContent = screen.getByText('Test Content');
        fireEvent.click(modalContent);
        expect(onClose).not.toHaveBeenCalled();
    });
});
