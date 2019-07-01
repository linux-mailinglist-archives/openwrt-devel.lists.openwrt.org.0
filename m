Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF3E5C5B2
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jul 2019 00:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hdQDseTnDi1t5DX7l4JjlNVkDEP5FmrVDZGW0scycic=; b=oEcHLB8TBR0jim/aOswjQlmBqv
	/NF8PtSlTDdK7x0fthCgzxabfN+CqVyfJvkt3KHiXFREKtGwrnHGrF5ZjOcWa1zBrnLpk6NIHoM8s
	rTMoCj/2WWuUQI6Kv/YpUv4KeEpWgMeG2knxikIVQpLzlq+HwnNRwDR9ra/8HPcS6yobOUWmNpVIC
	FpqTPLMClNUnionehvFp4YC42mmrl8w105ZlJ/iY52NTdiEBPBFM5lGNQG+lYE6dC/R78s3Vys6ZH
	wF4qt4hZ9GHiDjt+Uz0UkTFueTLYza6w+dDbTpIACfXQk3zqxhDUtGoIiGGCRXAVUcXJvyYDOjch1
	yuO3EgCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi4tT-0006o4-Vx; Mon, 01 Jul 2019 22:35:28 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi4t8-0005c0-DT
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 22:35:08 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1hi4ss-0004Yx-4y
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jul 2019 00:34:52 +0200
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.89)
 (envelope-from <devel-sven@geroedel.de>) id 1hi4sr-0007D7-B1
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jul 2019 00:34:49 +0200
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 02 Jul 2019 00:34:49 +0200
Message-ID: <14074459.sfkpgnqCHN@strike>
In-Reply-To: <20190309140015.24122-1-devel-sven@geroedel.de>
References: <12c7de9e-a210-2c75-40e3-65bed204df85@wwsnet.net>
 <20190309140015.24122-1-devel-sven@geroedel.de>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details. Content preview:  Hi,
 based on the recent commit of "scripts/feeds: add src-include
 method" I remembered in my patch I sent some time ago. As Jo suggested it's
 now adding a dependency to all .mk files in a feeds root-folde [...] 
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
X-CRM114-CacheID: sfid-20190701_153506_622937_5C778668 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: have scripts/feeds honor all
 toplevel .mk-files of a feed
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

based on the recent commit of "scripts/feeds: add src-include method" =

I remembered in my patch I sent some time ago.
As Jo suggested it's now adding a dependency to all .mk files in a feeds
root-folder.

I assume it was just overseen or is there something bad? We use it for
some time for our freifunk-firmware already.

Sven

Am Samstag, 9. M=E4rz 2019, 15:00:15 CEST schrieb Sven Roederer:
> The luci and freifunk feed having a common Makefile included by the
> individual packages. Currently a change to this file will be ignored
> when running "scripts/feeds update".
> When we are updating for a feed, add a dependency for all .mk files
> in the root of it.
> =

> Signed-off-by: Sven Roederer <devel-sven@geroedel.de>
> ---
>  include/scan.mk | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> =

> diff --git a/include/scan.mk b/include/scan.mk
> index d9cd4f7e8c..7df5dc6486 100644
> --- a/include/scan.mk
> +++ b/include/scan.mk
> @@ -12,10 +12,17 @@
> OVERRIDELIST:=3D$(TMP_DIR)/info/.overrides-$(SCAN_TARGET)-$(SCAN_COOKIE)
> =

>  export PATH:=3D$(TOPDIR)/staging_dir/host/bin:$(PATH)
> =

> +define feedname
> +$(if $(patsubst feeds/%,,$(1)),,$(word 2,$(subst /, ,$(1))))
> +endef
> +
>  ifeq ($(SCAN_NAME),target)
>    SCAN_DEPS=3Dimage/Makefile profiles/*.mk $(TOPDIR)/include/kernel*.mk
> $(TOPDIR)/include/target.mk image/*.mk else
>    SCAN_DEPS=3D$(TOPDIR)/include/package*.mk
> +ifneq ($(call feedname,$(SCAN_DIR)),)
> +  SCAN_DEPS +=3D $(TOPDIR)/feeds/$(call feedname,$(SCAN_DIR))/*.mk
> +endif
>  endif
> =

>  ifeq ($(IS_TTY),1)
> @@ -34,10 +41,6 @@ else
>    endef
>  endif
> =

> -define feedname
> -$(if $(patsubst feeds/%,,$(1)),,$(word 2,$(subst /, ,$(1))))
> -endef
> -
>  define PackageDir
>    $(TMP_DIR)/.$(SCAN_TARGET): $(TMP_DIR)/info/.$(SCAN_TARGET)-$(1)
>    $(TMP_DIR)/info/.$(SCAN_TARGET)-$(1): $(SCAN_DIR)/$(2)/Makefile $(fore=
ach
> DEP,$(DEPS_$(SCAN_DIR)/$(2)/Makefile) $(SCAN_DEPS),$(wildcard $(if $(filt=
er
> /%,$(DEP)),$(DEP),$(SCAN_DIR)/$(2)/$(DEP))))





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
