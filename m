Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 537FD1F21A5
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 23:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0j42IWAGBI75pMLjTPXljhbLpzsKXiA6F6PlnJNtD4M=; b=E157HgW8B/tqBqwKiRZ478gEwe
	aPDQNgAmR2eZWEeK9opbbBmBF4nvNIQxGQfpqqzyr48vYR8Eu/D+YVhj0LXZNgU6SoN+8p6x6kf3v
	xVchrQFtNO81+3F6HnT3+FXmtS24VYXCc3IGkUAer2bqnlWbPIOFbp5OzgHgECGwfpKjjmER0XdN3
	h46PJSld0xitN8ujGwJSxcYNKwRsmIOcQhstY6C+tLkwcaSCKWTv5MgE5kzBW0D7iUoAd0bVdP7jH
	rY89jOhztjCTub3Kxy+I0Jq56T4ieGfEmLKIH97xsyLjoPoT5nbzhEHpKXvoa395pfUIyPibKGvsW
	EmHeYO1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiPiX-00064y-Mn; Mon, 08 Jun 2020 21:54:05 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiPiR-000630-19
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 21:54:00 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1jiPiB-0000PM-Kx; Mon, 08 Jun 2020 23:53:44 +0200
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>)
 id 1jiPiB-00087G-86; Mon, 08 Jun 2020 23:53:43 +0200
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 08 Jun 2020 23:53:43 +0200
Message-ID: <9826759.b33H7hSvdo@strike>
In-Reply-To: <20200414211447.324042-1-mail@aparcar.org>
References: <20200414211447.324042-1-mail@aparcar.org>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Am Dienstag, 14. April 2020,
 23:14:47 CEST schrieb Paul Spooren:
 > The buildroot and SDK both require `libncurses-dev` to be installed on
 > the system, however the ImageBuilder uses precompiled binari [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_145359_222355_3AB6CE59 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] build,
 imagebuilder: Do not require libncurses-dev
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Am Dienstag, 14. April 2020, 23:14:47 CEST schrieb Paul Spooren:
> The buildroot and SDK both require `libncurses-dev` to be installed on
> the system, however the ImageBuilder uses precompiled binaries.
> 
> This patch changes the prerequirements checks to skip the
> `libncurses-dev` part if running as ImageBuilder.
> 

Hi Paul,

I gave this today a test on my spare computer, but it still complained about 
the missing libncurses.
I tested with snapshot imagebuilder (r13519-8a858363b0) with just calling 
"make image"

Any ideas?

Sven

> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
>  include/prereq-build.mk | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/prereq-build.mk b/include/prereq-build.mk
> index 830a9eff9a..72fb6ad97a 100644
> --- a/include/prereq-build.mk
> +++ b/include/prereq-build.mk
> @@ -51,10 +51,12 @@ $(eval $(call TestHostCommand,working-g++, \
>  		g++ -x c++ -o $(TMP_DIR)/a.out - -lstdc++ && \
>  		$(TMP_DIR)/a.out))
> 
> +ifndef IB
>  $(eval $(call TestHostCommand,ncurses, \
>  	Please install ncurses. (Missing libncurses.so or ncurses.h), \
>  	echo 'int main(int argc, char **argv) { initscr(); return 0; }' | \
>  		gcc -include ncurses.h -x c -o $(TMP_DIR)/a.out - -lncurses))
> +endif
> 
>  ifeq ($(HOST_OS),Linux)
>    zlib_link_flags := -Wl,-Bstatic -lz -Wl,-Bdynamic





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
