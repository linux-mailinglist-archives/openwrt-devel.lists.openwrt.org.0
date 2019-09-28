Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA148C1242
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Sep 2019 23:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-Id:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RQl5jjMfQmN7SSTzVl3v9CC2C3AG+8EXAOZQA7hDV6k=; b=FXed/3NBAagUM0lkwNQQ9pamL
	YPl0EYbddQNfvJvbF/0zXIYSE7KgKyMhscDt+V57B4uiezxvr2iSR8T+yy9tJ2CTiFuLcK99Ly+JB
	q7eLVkD2wiIsG8HILs2FOOgk/l5k4i8vFwHmShEL1mA+FMpps0WMhwfVwS5DMzRniHsIayxYnNXbM
	7QRVqnvONRP5AzUU6xs5FmeRmiarL95L7EOqWDT0IrWqaQw/EYq0p2BXeGRUGjm++i4Qw4yfv0q6p
	Cnk96FrlAcdiG9+px46qBQnYKRo87ylkv6hKEKlhaRrzj/61gmy7S8JlpCUTukYKgNP1JU0lbZ72+
	/Eot9c6CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEKW5-0000Bk-CT; Sat, 28 Sep 2019 21:44:37 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEKVu-0000BM-R3
 for openwrt-devel@lists.openwrt.org; Sat, 28 Sep 2019 21:44:28 +0000
Received: by mail-pg1-x541.google.com with SMTP id i14so5230180pgt.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Sep 2019 14:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:message-id:in-reply-to:references
 :mime-version; bh=59hOovsGkVj4ih1N0zFhzWugRauaSb9FzF1Npl3/gxA=;
 b=ptzU6mypMif+Z206a308fMekmeG0Ygf0rV6xQBUlDvm1iB9tiWjHYGNe5KOasIXDpn
 v0BAiEC3i3Z+6AKXDLp8RlLc2mxZMZEBuuO2E/G6dbsVkoezcmMH7aZewjpFUCrvDN13
 +/irlG5yb0++cYRmvJLQMMoLUW2moF04FBIqUVWQUyQwWTJ69tMMVxwt3kf7hPFRwvRy
 XFyrRRYDQMeHL7nuWLkr7k/nD88Zn69FSy9Xc9FI0cii2LL998p6tev2Q9TPl3c2/shV
 q01Ab5kV0SzkIDpqY2YcW5bXi/8WvWU1QAl7Pd+Dcz+Cvq0ugIu3XmS1VS2q5y1Ijkdr
 yw+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
 :references:mime-version;
 bh=59hOovsGkVj4ih1N0zFhzWugRauaSb9FzF1Npl3/gxA=;
 b=lzEqCHgJPtISQiaL/LZNbOX/K1FBjPKQjToLM15Qs4/NfphhFE0eJVqTiKt1WTUESp
 VdNFqw50TeWfQRPtHtMc5GR1VT0RcYHwBXpIS2wc1IqGZKr1MRsidykDpKDWohLzO/y5
 3we5jJi2z3iHxwZq1uEj9j+WJmGZ4YJV4KhW2Dv3Qrvq8nI9jbIMseINqldv72iDgmZs
 7cBiIPIVm5gcsY0o37zpwj0uDXguU3PRcyfdKOlQaozdDY3fR2RROE0AWeT5QwrJrbej
 DuTEvY8sbVsEQs3x2Hmuclk08qJwwgMin+49GWEOkxDUesbQSo/TJ1xbH+T6wtEVIEyA
 zCvQ==
X-Gm-Message-State: APjAAAXezkSz3OV8PwOHa9yM1ZP92wOERfef9Mbb8DbQyJ5wlxTUNKj2
 kbGlFTBxamHBDndoat+8y9TJyWpc
X-Google-Smtp-Source: APXvYqwbErej2DynrdLbPO7smGX8s1I07bjZn4HJAJuTkd0cDjEDE1AkQGdrUzFTmIA+Pj9HnCBwMw==
X-Received: by 2002:aa7:9ab4:: with SMTP id x20mr13167550pfi.59.1569707064148; 
 Sat, 28 Sep 2019 14:44:24 -0700 (PDT)
Received: from [192.168.0.241] ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id y10sm6814196pfe.148.2019.09.28.14.44.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Sep 2019 14:44:23 -0700 (PDT)
Date: Sat, 28 Sep 2019 14:44:22 -0700
From: Rosen Penev <rosenp@gmail.com>
To: Paul Spooren <mail@aparcar.org>
Message-Id: <1569707062.1739.0@smtp.gmail.com>
In-Reply-To: <20190928204447.19627-1-mail@aparcar.org>
References: <20190928204447.19627-1-mail@aparcar.org>
X-Mailer: pantheon-mail/1.0.8
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_144426_902366_F1306222 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain/gcc: switch to version 8 by
 default
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============0090018217265698404=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0090018217265698404==
Content-Type: multipart/alternative; boundary="=-p7m0BMrv8r3VzgPiCWrp"

--=-p7m0BMrv8r3VzgPiCWrp
Content-Type: text/plain; charset=us-ascii; format=flowed


On Sat, Sep 28, 2019 at 1:44 PM, Paul Spooren <mail@aparcar.org> wrote:
> Main motivation for this commit is the introduction of
> `-ffile-prefix-map=` which alows reproducible build path.
> 
> Compiling tested without errors on the following targets:
> 
> * ath79
> * brcm2708
> * brcm63xx
> * ixp4xx
> * ramips
> * sunxi
> * x86
> 
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
> Please let me know if I should compile more targets.
A small note:

Everything should build just fine with GCC8. All of the major problems 
have been patched away. The remaining compilation failures on ARC 
(which uses GCC8) are mostly uClibc-ng related. See: 
https://downloads.openwrt.org/releases/faillogs-19.07/arc_arc700/packages/

GCC9 still needs work (umdns throws an error for example). I also 
remember with GCC9.1 that LuCI would keep crashing (liblua I think).
> 
> 
>  toolchain/gcc/Config.in      | 3 +--
>  toolchain/gcc/Config.version | 9 ++++-----
>  2 files changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in
> index 0977f9b4e7..7d7f34210a 100644
> --- a/toolchain/gcc/Config.in
> +++ b/toolchain/gcc/Config.in
> @@ -2,8 +2,7 @@
> 
>  choice
>  	prompt "GCC compiler Version" if TOOLCHAINOPTS
> -	default GCC_USE_VERSION_8 if arc
> -	default GCC_USE_VERSION_7
> +	default GCC_USE_VERSION_8
>  	help
>  	  Select the version of gcc you wish to use.
> 
> diff --git a/toolchain/gcc/Config.version 
> b/toolchain/gcc/Config.version
> index d9732b3e0d..1a86bcb8a6 100644
> --- a/toolchain/gcc/Config.version
> +++ b/toolchain/gcc/Config.version
> @@ -2,9 +2,8 @@ config GCC_VERSION_5
>  	default y if GCC_USE_VERSION_5
>  	bool
> 
> -config GCC_VERSION_8
> -	default y if GCC_USE_VERSION_8
> -	default y if arc && !GCC_USE_VERSION_9
> +config GCC_VERSION_7
> +	default y if GCC_USE_VERSION_7
>  	bool
> 
>  config GCC_VERSION_9
> @@ -19,6 +18,6 @@ config GCC_USE_EMBEDDED_PATH_REMAP
>  config GCC_VERSION
>  	string
>  	default "5.5.0"		if GCC_VERSION_5
> -	default "8.3.0"		if GCC_VERSION_8
> +	default "7.4.0"		if GCC_VERSION_7
>  	default "9.2.0"		if GCC_VERSION_9
> -	default "7.4.0"
> +	default "8.3.0"
> --
> 2.23.0
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel




--=-p7m0BMrv8r3VzgPiCWrp
Content-Type: text/html; charset=us-ascii

<br>

On Sat, Sep 28, 2019 at 1:44 PM, Paul Spooren &lt;mail@aparcar.org&gt; wrote:<br>
<blockquote type="cite"><div class="plaintext" style="white-space: pre-wrap;">Main motivation for this commit is the introduction of
`-ffile-prefix-map=` which alows reproducible build path.

Compiling tested without errors on the following targets:

* ath79
* brcm2708
* brcm63xx
* ixp4xx
* ramips
* sunxi
* x86

Signed-off-by: Paul Spooren &lt;<a href="mailto:mail@aparcar.org">mail@aparcar.org</a>&gt;
---
Please let me know if I should compile more targets.</div></blockquote>A small note:<div><br></div><div>Everything should build just fine with GCC8. All of the major problems have been patched away. The remaining compilation failures on ARC (which uses GCC8) are mostly uClibc-ng related. See:&nbsp;<a href="https://downloads.openwrt.org/releases/faillogs-19.07/arc_arc700/packages/">https://downloads.openwrt.org/releases/faillogs-19.07/arc_arc700/packages/</a></div><div><br></div><div>GCC9 still needs work (umdns throws an error for example). I also remember with GCC9.1 that LuCI would keep crashing (liblua I think).</div><div><blockquote type="cite"><div class="plaintext" style="white-space: pre-wrap;">

 toolchain/gcc/Config.in      | 3 +--
 toolchain/gcc/Config.version | 9 ++++-----
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in
index 0977f9b4e7..7d7f34210a 100644
--- a/toolchain/gcc/Config.in
+++ b/toolchain/gcc/Config.in
@@ -2,8 +2,7 @@
 
 choice
 	prompt "GCC compiler Version" if TOOLCHAINOPTS
-	default GCC_USE_VERSION_8 if arc
-	default GCC_USE_VERSION_7
+	default GCC_USE_VERSION_8
 	help
 	  Select the version of gcc you wish to use.
 
diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
index d9732b3e0d..1a86bcb8a6 100644
--- a/toolchain/gcc/Config.version
+++ b/toolchain/gcc/Config.version
@@ -2,9 +2,8 @@ config GCC_VERSION_5
 	default y if GCC_USE_VERSION_5
 	bool
 
-config GCC_VERSION_8
-	default y if GCC_USE_VERSION_8
-	default y if arc &amp;&amp; !GCC_USE_VERSION_9
+config GCC_VERSION_7
+	default y if GCC_USE_VERSION_7
 	bool
 
 config GCC_VERSION_9
@@ -19,6 +18,6 @@ config GCC_USE_EMBEDDED_PATH_REMAP
 config GCC_VERSION
 	string
 	default "5.5.0"		if GCC_VERSION_5
-	default "8.3.0"		if GCC_VERSION_8
+	default "7.4.0"		if GCC_VERSION_7
 	default "9.2.0"		if GCC_VERSION_9
-	default "7.4.0"
+	default "8.3.0"
<div>-- 
</div>2.23.0


_______________________________________________
openwrt-devel mailing list
<a href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</div></blockquote><br><br>
</div>
--=-p7m0BMrv8r3VzgPiCWrp--



--===============0090018217265698404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0090018217265698404==--


