Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214A019DCB
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 May 2019 15:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SvHb3FNuc+grRASgKjzQcmVej5itfPhdI2bw3L8RtDQ=; b=Ib4SGDyP7v3CvG
	t/min/tocYmClYZuojhk6UUucFAxbiExwLpj/dFAAgtuCf5ko3d2jgqCWTMkcVKjJd57xjLRcM75r
	ttsofgSbN3J4SNDbTxdRDG9msY1cl9Y5eN4NrBk2B0A6O+g1OX1HFEEYynO6QiyBeqqArK25S0w0E
	xR1dNwdx1SUd3I4UfpuMI3v5tWxSkVgfc9IOJTHbIiqeLRKBqGL0x2TrM1NlmVOJ4j4antwyTtZdz
	kW2nmIgf1NMN+tGZ3cehnhYGnxQfv8LWaU5IkfkqjG0B+DHMoZbemRJFSb21e/JeunOZ0sQzlhW30
	VzrPlDJrfcNpTg6IOSEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5E5-0001bL-Or; Fri, 10 May 2019 13:06:13 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5Dx-0001ao-7G
 for openwrt-devel@lists.openwrt.org; Fri, 10 May 2019 13:06:07 +0000
Received: from dawn.localdomain (edu242240.nat.uni-leipzig.de [139.18.242.240])
 (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 9F88F24000F;
 Fri, 10 May 2019 13:05:51 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 May 2019 15:05:37 +0200
Message-Id: <20190510130538.31892-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_060605_562656_388DF10F 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] add clang-format kernel style
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Paul Spooren <mail@aparcar.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

copied from the official kernel style:

https://github.com/torvalds/linux/blob/master/.clang-format

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 .clang-format | 118 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 118 insertions(+)
 create mode 100644 .clang-format

diff --git a/.clang-format b/.clang-format
new file mode 100644
index 0000000..3fd09cd
--- /dev/null
+++ b/.clang-format
@@ -0,0 +1,118 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# clang-format configuration file. Intended for clang-format >= 4.
+#
+# For more information, see:
+#
+#   Documentation/process/clang-format.rst
+#   https://clang.llvm.org/docs/ClangFormat.html
+#   https://clang.llvm.org/docs/ClangFormatStyleOptions.html
+#
+---
+AccessModifierOffset: -4
+AlignAfterOpenBracket: Align
+AlignConsecutiveAssignments: false
+AlignConsecutiveDeclarations: false
+#AlignEscapedNewlines: Left # Unknown to clang-format-4.0
+AlignOperands: true
+AlignTrailingComments: false
+AllowAllParametersOfDeclarationOnNextLine: false
+AllowShortBlocksOnASingleLine: false
+AllowShortCaseLabelsOnASingleLine: false
+AllowShortFunctionsOnASingleLine: None
+AllowShortIfStatementsOnASingleLine: false
+AllowShortLoopsOnASingleLine: false
+AlwaysBreakAfterDefinitionReturnType: None
+AlwaysBreakAfterReturnType: None
+AlwaysBreakBeforeMultilineStrings: false
+AlwaysBreakTemplateDeclarations: false
+BinPackArguments: true
+BinPackParameters: true
+BraceWrapping:
+  AfterClass: false
+  AfterControlStatement: false
+  AfterEnum: false
+  AfterFunction: true
+  AfterNamespace: true
+  AfterObjCDeclaration: false
+  AfterStruct: false
+  AfterUnion: false
+  #AfterExternBlock: false # Unknown to clang-format-5.0
+  BeforeCatch: false
+  BeforeElse: false
+  IndentBraces: false
+  #SplitEmptyFunction: true # Unknown to clang-format-4.0
+  #SplitEmptyRecord: true # Unknown to clang-format-4.0
+  #SplitEmptyNamespace: true # Unknown to clang-format-4.0
+BreakBeforeBinaryOperators: None
+BreakBeforeBraces: Custom
+#BreakBeforeInheritanceComma: false # Unknown to clang-format-4.0
+BreakBeforeTernaryOperators: false
+BreakConstructorInitializersBeforeComma: false
+#BreakConstructorInitializers: BeforeComma # Unknown to clang-format-4.0
+BreakAfterJavaFieldAnnotations: false
+BreakStringLiterals: false
+ColumnLimit: 80
+CommentPragmas: '^ IWYU pragma:'
+#CompactNamespaces: false # Unknown to clang-format-4.0
+ConstructorInitializerAllOnOneLineOrOnePerLine: false
+ConstructorInitializerIndentWidth: 8
+ContinuationIndentWidth: 8
+Cpp11BracedListStyle: false
+DerivePointerAlignment: false
+DisableFormat: false
+ExperimentalAutoDetectBinPacking: false
+#FixNamespaceComments: false # Unknown to clang-format-4.0
+#IncludeBlocks: Preserve # Unknown to clang-format-5.0
+IncludeCategories:
+  - Regex: '.*'
+    Priority: 1
+IncludeIsMainRegex: '(Test)?$'
+IndentCaseLabels: false
+#IndentPPDirectives: None # Unknown to clang-format-5.0
+IndentWidth: 8
+IndentWrappedFunctionNames: false
+JavaScriptQuotes: Leave
+JavaScriptWrapImports: true
+KeepEmptyLinesAtTheStartOfBlocks: false
+MacroBlockBegin: ''
+MacroBlockEnd: ''
+MaxEmptyLinesToKeep: 1
+NamespaceIndentation: Inner
+#ObjCBinPackProtocolList: Auto # Unknown to clang-format-5.0
+ObjCBlockIndentWidth: 8
+ObjCSpaceAfterProperty: true
+ObjCSpaceBeforeProtocolList: true
+
+# Taken from git's rules
+#PenaltyBreakAssignment: 10 # Unknown to clang-format-4.0
+PenaltyBreakBeforeFirstCallParameter: 30
+PenaltyBreakComment: 10
+PenaltyBreakFirstLessLess: 0
+PenaltyBreakString: 10
+PenaltyExcessCharacter: 100
+PenaltyReturnTypeOnItsOwnLine: 60
+
+PointerAlignment: Right
+ReflowComments: false
+SortIncludes: false
+#SortUsingDeclarations: false # Unknown to clang-format-4.0
+SpaceAfterCStyleCast: false
+SpaceAfterTemplateKeyword: true
+SpaceBeforeAssignmentOperators: true
+#SpaceBeforeCtorInitializerColon: true # Unknown to clang-format-5.0
+#SpaceBeforeInheritanceColon: true # Unknown to clang-format-5.0
+SpaceBeforeParens: ControlStatements
+#SpaceBeforeRangeBasedForLoopColon: true # Unknown to clang-format-5.0
+SpaceInEmptyParentheses: false
+SpacesBeforeTrailingComments: 1
+SpacesInAngles: false
+SpacesInContainerLiterals: false
+SpacesInCStyleCastParentheses: false
+SpacesInParentheses: false
+SpacesInSquareBrackets: false
+Standard: Cpp03
+TabWidth: 8
+UseTab: Always
+...
+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
