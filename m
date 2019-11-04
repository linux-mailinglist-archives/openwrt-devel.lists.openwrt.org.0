Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B8DED80D
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 04:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sk1xLxf2obpHiGfAMLTIxK3KJ0z5qIwbCxovKVjlyJk=; b=WRhdG23yOLMgZW
	gxGJ1cPlZxjTlJzwhse+ZUrJjE7TcFE7bNaLkHAHby/CPeBOYvBLA/Soz+ZB1nQoCSxaybf7clNAf
	eZQGV6MV5r9mXHkXh8qq1TMxCwB9Q1lxIlpgBGbzXMcnZgQMIf/Fx4CVmVphIancDhaJGYvN2/fel
	gC1T1HWQ8unRfwzG9pgdjtj23x/aA6OBHbbotrwjrTfiLW1kL1Vr3pVtx/7PYiTqN65OMWqLf0pya
	Fy8b30Qbp/z2pz/f3FO6zsb5hqKyAP4IrUlgeQgaRCYLNt/fRYhhxmMU9tMEBAu1ZchbEzBLoabbG
	jXkgrJ6bhEDT/8f7jnzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRT3Y-0005iB-Ho; Mon, 04 Nov 2019 03:29:28 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRT3P-0005hB-4d
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 03:29:20 +0000
Received: by mail-lj1-x243.google.com with SMTP id r7so7241006ljg.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 03 Nov 2019 19:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bvwuhB6GokTosoWtlAKW9eFaAbmgxExA+mmGQpUuaa0=;
 b=ufS4KPRg3XcofXmSfitnQb+VR0j2jr1NRTZRDqEHmQ9HVXdJSvqkPvrmbHnA3z4QCl
 aRRKWAAvb/oLBheeELG1YWQ4SJBYNaA1Fra27MNtDcGAr+W+KF6UCCtCUOYok9TFvJYw
 rxgeobJfqVl5DXJm+kDCsKynLd4pOV5jUD41rYvIB/2bYw7iYFj2w2B/LexVccpqQ9N/
 6J6zpyMTUYr4BfpIw9clAVsIm7UASpULuvjZ/Gcv/mMbQXwe+kwPW6lX+mJnDIgids63
 X/OTOBmoEQQC9tMaUTw/BsB0swlcTHgMtEnsX2Nr8P+lHYhJ1IIjS5IRPMjpDPRpi9sg
 WbsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bvwuhB6GokTosoWtlAKW9eFaAbmgxExA+mmGQpUuaa0=;
 b=okVu7V7kY+m2ufcVsq1Rs88YWH1UrLXzZuyDe4NzhFIeoV4rOW8BYdm5z3Lk7x9SYg
 XIu7XKPXwj8BVRAbgSbN8UQpltfZUUDnwSsZRzsnFe4daZ+LDQ0maViRGuyYh7rGd5UV
 mgSb1QUtzqkHBJIk/l+CWxI5AzTEGIb+yK801/6aj95uzvi/rgmiSXJaBsCZL2BhIMfD
 tH0QrmbiPsPnuWWgU3S3p7bV7lzDHipYXc+SY4kKv2yG43ZuObxaVE5wUDGyiLcv/9VQ
 nM5FmPpye2JiykF/sgYJheTMb041bNMX/CIHN/FSvBulsUgK5OQ9HehIUEHjHqJRIgU6
 5ZAg==
X-Gm-Message-State: APjAAAUV4w/Wdyzv10V/64De/j+WDD+ySPnL4qnSmoyVqIQyyzNDUM5v
 8tqf4cNjxw4N4QsZTIyP6qmuA40ve7/UU6cIMo4=
X-Google-Smtp-Source: APXvYqxyEJm7zF39JwOxsQPePHE76iRPGxd09hdsN+WOYvat/g0X1O7fS8g8JE3U66nBLg5Bil7mLGtwqc66TjD5Rqo=
X-Received: by 2002:a05:651c:387:: with SMTP id
 e7mr17281907ljp.0.1572838156818; 
 Sun, 03 Nov 2019 19:29:16 -0800 (PST)
MIME-Version: 1.0
References: <20191101160634.25559-1-hauke@hauke-m.de>
 <20191101160634.25559-2-hauke@hauke-m.de>
In-Reply-To: <20191101160634.25559-2-hauke@hauke-m.de>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Mon, 4 Nov 2019 11:29:05 +0800
Message-ID: <CAECwjAij-tXE59c2WEKEWPpofTCrmWgwwW_MYnW1cB_yXiKnVg@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_192919_208941_561AF951 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH uci 2/2] build: Add -Wclobbered to
 detect problems with longjmp
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Hauke

On Sat, 2 Nov 2019 at 00:07, Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> When we jump back to a save point in UCI_THROW() with longjmp all the
> registers will be reset to the old values when we called UCI_TRAP_SAVE()
> last time, but the memory is not restored. This will revert all the
> variables which are stored in registers, but not the variables stored on
> the stack.
>
> Mark all the variables which the compiler could put into a register as
> volatile to store them safely on the stack and make sure they have the
> defined current values also after longjmp was called.
>
> This also activates a compiler warning which should warn us in such
> cases.
> This could fix some potential problem in error paths like the one
> reported in CVE-2019-15513.
>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>

Not sure I understand the internals right.  It seems to me a few
changes below may not be necessary.  The -Wclobber check can produce
false-positives right?  Are these changes made mainly for "better safe
than regret"?

Regards,
                yousong

> ---
>  CMakeLists.txt |  2 +-
>  delta.c        | 20 ++++++++++----------
>  file.c         | 11 ++++++-----
>  list.c         |  4 ++--
>  4 files changed, 19 insertions(+), 18 deletions(-)
>
> diff --git a/CMakeLists.txt b/CMakeLists.txt
> index 170eb0b..578c021 100644
> --- a/CMakeLists.txt
> +++ b/CMakeLists.txt
> @@ -3,7 +3,7 @@ cmake_minimum_required(VERSION 2.6)
>  PROJECT(uci C)
>
>  SET(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
> -ADD_DEFINITIONS(-Os -Wall -Werror --std=gnu99 -g3 -I. -DUCI_PREFIX="${CMAKE_INSTALL_PREFIX}")
> +ADD_DEFINITIONS(-Os -Wall -Werror -Wclobbered --std=gnu99 -g3 -I. -DUCI_PREFIX="${CMAKE_INSTALL_PREFIX}")
>
>  OPTION(UCI_DEBUG "debugging support" OFF)
>  OPTION(UCI_DEBUG_TYPECAST "typecast debugging support" OFF)
> diff --git a/delta.c b/delta.c
> index 386167d..52ebe3b 100644
> --- a/delta.c
> +++ b/delta.c
> @@ -100,7 +100,7 @@ int uci_set_savedir(struct uci_context *ctx, const char *dir)
>  {
>         char *sdir;
>         struct uci_element *e, *tmp;
> -       bool exists = false;
> +       volatile bool exists = false;
>
>         UCI_HANDLE_ERR(ctx);
>         UCI_ASSERT(ctx, dir != NULL);
> @@ -259,7 +259,7 @@ error:
>  static int uci_parse_delta(struct uci_context *ctx, FILE *stream, struct uci_package *p)
>  {
>         struct uci_parse_context *pctx;
> -       int changes = 0;
> +       volatile int changes = 0;
>
>         /* make sure no memory from previous parse attempts is leaked */
>         uci_cleanup(ctx);
> @@ -294,8 +294,8 @@ error:
>  /* returns the number of changes that were successfully parsed */
>  static int uci_load_delta_file(struct uci_context *ctx, struct uci_package *p, char *filename, FILE **f, bool flush)
>  {
> -       FILE *stream = NULL;
> -       int changes = 0;
> +       FILE *volatile stream = NULL;
> +       volatile int changes = 0;
>
>         UCI_TRAP_SAVE(ctx, done);
>         stream = uci_open_stream(ctx, filename, NULL, SEEK_SET, flush, false);
> @@ -317,8 +317,8 @@ __private int uci_load_delta(struct uci_context *ctx, struct uci_package *p, boo
>  {
>         struct uci_element *e;
>         char *filename = NULL;
> -       FILE *f = NULL;
> -       int changes = 0;
> +       FILE *volatile f = NULL;
> +       volatile int changes = 0;
>
>         if (!p->has_delta)
>                 return 0;
> @@ -419,9 +419,9 @@ done:
>
>  int uci_revert(struct uci_context *ctx, struct uci_ptr *ptr)
>  {
> -       char *package = NULL;
> -       char *section = NULL;
> -       char *option = NULL;
> +       char *volatile package = NULL;
> +       char *volatile section = NULL;
> +       char *volatile option = NULL;
>
>         UCI_HANDLE_ERR(ctx);
>         uci_expand_ptr(ctx, ptr, false);
> @@ -463,7 +463,7 @@ error:
>
>  int uci_save(struct uci_context *ctx, struct uci_package *p)
>  {
> -       FILE *f = NULL;
> +       FILE *volatile f = NULL;
>         char *filename = NULL;
>         struct uci_element *e, *tmp;
>         struct stat statbuf;
> diff --git a/file.c b/file.c
> index 7333e48..321b66b 100644
> --- a/file.c
> +++ b/file.c
> @@ -721,10 +721,10 @@ static void uci_file_commit(struct uci_context *ctx, struct uci_package **packag
>  {
>         struct uci_package *p = *package;
>         FILE *f1, *f2 = NULL;
> -       char *name = NULL;
> -       char *path = NULL;
> +       char *volatile name = NULL;
> +       char *volatile path = NULL;
>         char *filename = NULL;
> -       bool do_rename = false;
> +       volatile bool do_rename = false;
>         int fd;
>
>         if (!p->path) {
> @@ -881,12 +881,13 @@ static char **uci_list_config_files(struct uci_context *ctx)
>         return configs;
>  }
>
> -static struct uci_package *uci_file_load(struct uci_context *ctx, const char *name)
> +static struct uci_package *uci_file_load(struct uci_context *ctx,
> +                                        const char *volatile name)
>  {
>         struct uci_package *package = NULL;
>         char *filename;
>         bool confdir;
> -       FILE *file = NULL;
> +       FILE *volatile file = NULL;
>
>         switch (name[0]) {
>         case '.':
> diff --git a/list.c b/list.c
> index 78efbaf..41a8702 100644
> --- a/list.c
> +++ b/list.c
> @@ -623,8 +623,8 @@ int uci_add_list(struct uci_context *ctx, struct uci_ptr *ptr)
>  {
>         /* NB: UCI_INTERNAL use means without delta tracking */
>         bool internal = ctx && ctx->internal;
> -       struct uci_option *prev = NULL;
> -       const char *value2 = NULL;
> +       struct uci_option *volatile prev = NULL;
> +       const char *volatile value2 = NULL;
>
>         UCI_HANDLE_ERR(ctx);
>
> --
> 2.20.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
