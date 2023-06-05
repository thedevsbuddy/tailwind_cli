export default {
  title: "TailwindCLI",
  description: "Just playing around.",
  base: "/tailwind_cli/",
  cleanUrls: true,
  markdown: {
    lineNumbers: true,
    defaultHighlightLang: "dart",
  },
  head: [],
  themeConfig: {
    outline: [2, 4],
    socialLinks: [
      { icon: "github", link: "https://github.com/thedevsbuddy/tailwind_cli" },
      { icon: "instagram", link: "https://www.instagram.com/iamspydey" },
    ],
    footer: {
      message: "Released under the MIT License.",
      copyright: `Copyright © ${new Date().getFullYear()} All rights reserved by Devsbuddy.com`,
    },
    nav: [
      {
        text: "Home",
        link: "/",
      },
      {
        text: "Docs",
        link: "/docs/introduction",
      },
      {
        text: "Blog",
        link: "https://devsbuddy.com/blog",
      },
      {
        text: "0.5.1",
        items: [
          {
            text: "Changelog",
            link: "https://github.com/thedevsbuddy/tailwind_cli/blob/main/CHANGELOG.md",
          },
        ],
      },
    ],
    sidebar: [
      {
        text: "Introduction",
        link: "/docs/introduction",
      },
      {
        text: "Installation",
        link: "/docs/installation",
      },
      {
        text: "Core Concepts",
        items: [
          { text: "UI Centric", link: "/docs/core-concepts/ui-centric" },
          {
            text: "Reusable Styles",
            link: "/docs/core-concepts/reusable-styles",
          },
          { text: "Dark Mode", link: "/docs/core-concepts/dark-mode" },
          {
            text: "Adding Custom Styles",
            link: "/docs/core-concepts/adding-custom-styles",
          },
        ],
      },
      {
        text: "Customizations",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "Configuration", link: "/docs/customizations/configuration" },
          { text: "Colors", link: "/docs/customizations/colors" },
          { text: "Spacing", link: "/docs/customizations/spacing" },
          { text: "Opacity", link: "/docs/customizations/opacity" },
          { text: "Font Sizes", link: "/docs/customizations/font-sizes" },
        ],
      },
      {
        text: "Widgets",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "TwButton", link: "/docs/widgets/tw-button" },
          { text: "TwColumn", link: "/docs/widgets/tw-column" },
          { text: "TwContainer", link: "/docs/widgets/tw-container" },
          { text: "TwPadding", link: "/docs/widgets/tw-padding" },
          { text: "TwRow", link: "/docs/widgets/tw-row" },
          { text: "TwStack", link: "/docs/widgets/tw-stack" },
          { text: "TwText", link: "/docs/widgets/tw-text" },
          { text: "TwWrap", link: "/docs/widgets/tw-wrap" },
          { text: "TwInkWell", link: "/docs/widgets/tw-inkwell" },
        ],
      },
      {
        text: "Colors",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "Background Color", link: "/docs/colors/background-color" },
          { text: "Text Color", link: "/docs/colors/text-color" },
          { text: "Border Color", link: "/docs/colors/border-color" },
          { text: "Gradient Color", link: "/docs/colors/gradient-color" },
          { text: "Dark Theme", link: "/docs/colors/dark-theme" },
        ],
      },
      {
        text: "Extensions",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "Methods", link: "/docs/extensions/methods" },
          { text: "Getters", link: "/docs/extensions/getters" },
        ],
      },
      {
        text: "Effects",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "Box Shadow", link: "/docs/effects/box-shadow" },
          { text: "Opacity", link: "/docs/effects/opacity" },
        ],
      },
      {
        text: "Examples",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "eVault - Budget Tracking App", link: "#" },
          { text: "Example App", link: "#" },
        ],
      },
    ],
  },
};
