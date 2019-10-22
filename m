Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE30DFCBC
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 06:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uXBWmLpq0AdOSLGrfQqyaKhbSi/RjgH+bZfpnI1fzxc=; b=YVdFMAgjigDR0b4WKc2Q8rWwZX
	E1SNQBj1hV1Yi8MeHMP0oQD2fiQzjYoNF7TZt5WtCFAa3cS+1Hre31sAEFySKFe5TuGSBAktvamYg
	mLO9MCa/CVCpE5OWcBcrGdYkPHqdDIsXmzf3g8wxTdEzxMSn1A17khOBJpSxKhQgfMws+JoQN+SCb
	dOxYU5CZ6yn455nSX9ywa7ZxaAuPO4JQXO8vrP/AFYH2nGolTD9tCilrV00o9LcEdaJWUMHt4YSW8
	DcTTbhlOdwZHrzV6NGXbL5tZvAYbcB0OGQFSwQhcKgoHFkHMqI3a1sYBhP7U5d4EF3g+ckInpE/5+
	mW6i0QvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMlki-0003os-L6; Tue, 22 Oct 2019 04:26:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMlkb-0003oC-3l
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 04:26:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6ED743FF3;
 Tue, 22 Oct 2019 06:26:24 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id e0b415f7;
 Tue, 22 Oct 2019 06:26:14 +0200 (CEST)
Date: Tue, 22 Oct 2019 06:26:14 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20191022042614.GA76509@meh.true.cz>
References: <20191021061031.81230-1-yszhou4tech@gmail.com>
 <20191021125924.37223-2-yszhou4tech@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021125924.37223-2-yszhou4tech@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_212629_303389_4A01028C 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH rpcd v2 6/6] main: exec_self: make clang
 analyzer happy
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, jo@mein.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Yousong Zhou <yszhou4tech@gmail.com> [2019-10-21 12:59:24]:

almost happy:

 main.c:65:1: warning: Potential leak of memory pointed to by 'args'

diff --git a/main.c b/main.c
index 12cb4c5c720c..8b11418f1c09 100644
--- a/main.c
+++ b/main.c
@@ -62,6 +62,7 @@ exec_self(int argc, char **argv)
 
 	setenv("RPC_HANGUP", "1", 1);
 	execv(cmd, (char * const *)args);
+	free(args);
 }

> Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
> ---
>  main.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/main.c b/main.c
> index 1db3241..12cb4c5 100644
> --- a/main.c
> +++ b/main.c
> @@ -47,12 +47,16 @@ static void
>  exec_self(int argc, char **argv)
>  {
>  	int i;
> -	const char *cmd = rpc_exec_lookup(argv[0]);
> -	char **args = calloc(argc + 1, sizeof(char *));
> +	const char *cmd;
> +	char **args;
>  
> -	if (!cmd || !args)
> +	cmd = rpc_exec_lookup(argv[0]);
> +	if (!cmd)
>  		return;
>  
> +	args = calloc(argc + 1, sizeof(char *));
> +	if (!args)
> +		return;
>  	for (i = 0; i < argc; i++)
>  		args[i] = argv[i];
>  
> 

-- 
ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
