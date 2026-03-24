# Figma Design Token Structure Summary

Based on an analysis of the "Color" primitives in the provided Figma design file, here is a summary of the design token structure, focusing on the connection between Global Primitives and Semantic Color Tokens.

## 1. Global Primitives (The Foundation)
The foundation of the design system is a comprehensive set of **Primitive Color Tokens**. These represent raw, named color values defined on scales from 100 to 1600. They do not convey meaning but provide the available palette to choose from.

### Primitive Color Families
- **Primary / Blue**: Scale from `100` (`#F4F9FF`) to `1600` (`#00063D`).
- **Violet**: Scale from `100` (`#F5F6FF`) to `1300` (`#381985`).
- **Sky Blue**: Scale from `100` (`#CDF0FF`) to `700` (`#0E3264`).
- **Neutral**: Scale from `100` (`#F3F3F3`) to `1000` (`#333333`).
- **Red**: Scale from `100` (`#FFEDEE`) to `500` (`#BE0000`).
- **Orange**: Scale from `100` (`#FFE3DB`) to `500` (`#E87659`).
- **Yellow**: Scale from `100` (`#FFFBEB`) to `1400` (`#69551C`).
- **Green**: Scale from `100` (`#EFFFFC`) to `1200` (`#03433B`).

## 2. Semantic Color Tokens (The Roles)
Instead of using raw primitive values directly (e.g., `Blue-500` or `#93C9FE`), the design system maps these primitives to **Semantic Tokens**. Semantic tokens define *how* and *why* a color is used, creating abstractions that allow for styling flexibility and context (e.g., dark mode vs. light mode).

The system explicitly defines several semantic roles that utilize the primitives above:

### Semantic Categories
1. **Primary Colors**:
   - *Role*: Defines the interface's overall feel, elicits emotion, and is used consistently across interactive elements (like main buttons or active states).
   - *Tied to*: Generally mapped to the `Primary / Blue` primitive scale.
2. **Neutral Colors**:
   - *Role*: The foundation for UI structures. Used for text, form fields, application backgrounds, and dividers.
   - *Tied to*: Mapped to the `Neutral` (Gray) scale.
3. **Accent / Secondary Colors**:
   - *Role*: Secondary to primary colors, these grab attention and support the brand identity in components like labels or non-primary actions.
   - *Tied to*: Mapped to colors like `Violet` or `Sky Blue`.
4. **Feedback Colors**:
   - *Role*: Highlight semantic states to provide visual feedback and warnings during interface interactions.
   - *Tied to*:
     - **Success**: Mapped to the `Green` primitives.
     - **Warning / Alert**: Mapped to the `Yellow` or `Orange` primitives.
     - **Error / Danger**: Mapped to the `Red` primitives.

## 3. The Connection (Alias Mapping)
The structure employs an alias approach characteristic of modern tokenizing strategies:

**Hard Value ➡️ Primitive Token ➡️ Semantic Token ➡️ Component**

*Example Flow:*
1. `#2091E3` (Hex Code)
2. `Sky-Blue-500` (Primitive Token)
3. `Color-Secondary-Action` (Semantic Token)
4. `<Button variant="secondary" />` (Component)

By keeping Global Primitives as raw values separated from Semantic Color Tokens, the system can seamlessly swap out underlying color values without needing to update every component, making theme management highly scalable.
