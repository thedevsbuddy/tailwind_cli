export default {
  title: "TailwindCLI - v0.5",
  description: "Just playing around.",
  head: [
    [
      "link",
      {
        rel: "shortcut icon",
        type: "image/png",
        href: "/assets/logo.png",
      },
    ],
  ],
  themeConfig: {
    outline: [2, 4],
    logo: "/assets/logo.png",
    socialLinks: [
      { icon: "github", link: "https://github.com/thedevsbuddy/tailwind_cli" },
      { icon: "twitter", link: "..." },
    ],
    footer: {
      message: "Released under the MIT License.",
      copyright: "Copyright © 2023. All rights reserved by Devsbuddy.com",
    },
    nav: [
      {
        text: "Home",
        link: "/",
      },
      {
        text: "About",
        link: "/about",
      },
      {
        text: "Blog",
        link: "https://devsbuddy.com/blog",
      },
      {
        text: "V0.5",
        items: [{ text: "TwButton", link: "/widgets/tw-button" }],
      },
    ],
    sidebar: [
      {
        text: "Introduction",
        link: "/",
      },
      {
        text: "Installation",
        link: "/installation",
      },
      {
        text: "Widgets",
        items: [
          { text: "TwButton", link: "/widgets/tw-button" },
          { text: "TwColumn", link: "/widgets/tw-column" },
          { text: "TwContainer", link: "/widgets/tw-container" },
          { text: "TwPadding", link: "/widgets/tw-padding" },
          { text: "TwRow", link: "/widgets/tw-row" },
          { text: "TwStack", link: "/widgets/tw-stack" },
          { text: "TwText", link: "/widgets/tw-text" },
          { text: "TwWrap", link: "/widgets/tw-wrap" },
        ],
      },
    ],
  },
};
