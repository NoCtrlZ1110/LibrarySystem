import React, { useState, useEffect } from "react";
import history from "../../services/history";

export const FeatureB: React.FC = () => {
  const [count, setCount] = useState(5);
  useEffect(() => {
    const intervalId = setInterval(() => {
      let time = count;
      setCount(time - 1);
      if (!count) history.push("/");
    }, 1000);

    return () => clearInterval(intervalId);
  }, [count]);

  return (
    <div className="text-center">
      <h1>Tính năng đang được phát triển!</h1>
      <h2>Bạn sẽ được chuyển về trang chủ sau {count} giây!</h2>
    </div>
  );
};
