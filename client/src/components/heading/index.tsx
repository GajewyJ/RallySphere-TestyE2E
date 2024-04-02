import { ReactNode } from 'react';

interface HeadingProps {
    level: number;
    children: ReactNode;
}

const Heading = ({ level, children }: HeadingProps) => {
    if(level >= 1 && level <= 6){
        const Tag = `h${level}` as keyof JSX.IntrinsicElements;
    
        return(
            <Tag>{children}</Tag>
        )
    }
    else{
        return(
            <p>{children}</p>
        )
    }
};

export default Heading;
