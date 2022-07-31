import React, { FC, useRef } from "react";
import csn from "classnames";
import { useButton } from "@react-aria/button";

type ButtonProps = {
  children: React.ReactNode;
  className?: string;
};

type ButtonIconProps = {
  children: React.ReactNode;
};

type ButtonGroup = {
  children: Omit<typeof Button, "Icon" | "Group">[];
};

export const Button = ({ children, className, ...props }: ButtonProps) => {
  const ref = useRef<HTMLButtonElement>(null);
  const { buttonProps } = useButton(props, ref);

  return (
    <button
      className={csn(
        "px-5 py-1.5 m-1 rounded-md bg-purple-500 text-white inline-flex hover:bg-purple-600 active:bg-purple-700",
        className
      )}
      {...buttonProps}
    >
      {children}
    </button>
  );
};

const Group = ({ children }: ButtonGroup) => {
  return (
    <div className="inline-block m-1">
      {React.Children.toArray(children as React.ReactNode).map((child) => {
        if (React.isValidElement(child)) {
          console.log(child.props);
          return React.cloneElement(child, {
            className:
              "m-0 rounded-none first:rounded-tl-md first:rounded-bl-md last:rounded-tr-md last:rounded-br-md border-r-2 last:border-none border-white " +
              child.props.className,
          });
        }
      })}
    </div>
  );
};

const Icon = ({ children }: ButtonIconProps) => {
  return <span className="mr-2 my-auto h-full">{children}</span>;
};

Button.Icon = Icon;
Button.Group = Group;
