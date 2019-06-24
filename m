Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C3051BDD
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 22:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eT469GYOGPMaPSBSboDv/SrwzucgI9BndnL7L0eIRE=; b=oASKH+aH9FC1+U
	QGpUetVHZ3qcW+53VnulMAB/Us3fiJACGypTbKLhNFpvg0RGLINN9ZfcqDf2VX4wwE7930K/SDEXa
	/MQiUq11vIOiO4vaI2OSFjvVwL5T4A2Y9Mh73DyCiXCnyZrKcRen1xN5j65PpotH92Xe2evCj8bFl
	JZUbVY14iF9mSzO8PnMBHabD46RtYA0BEDoM7+gI3dqkp8xRI8lpI5HtEDMLunHVJOEkQyOBskIym
	NgBnZNHuaCwplkO0bhla9rlZZIdiYhGeUJSr6+23hP0wKlLY/H0k0ZAs2G6+Vxp6NNY/xhIvl0zv/
	pvZE+g0wNnQnkBuN6rFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfV8g-0001yW-6k; Mon, 24 Jun 2019 20:00:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfV8N-0001nh-TH
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 20:00:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id k11so15249249wrl.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Jun 2019 13:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gUCcjpRBr+Fi47l76FgD/KxnEo5xnrYP9E1WqPCwG+U=;
 b=GD00di2RJpTpb0uF5ejj1sDuk5dngOgf36cmVMsVmFn1T50FArDFsKYTSX+BIVzlcU
 FanZTg1SfgWbgv8ELSFpN8tw++RNMlpGx3xMkKa3pK3yyOCMKBte3FY6iuO7NFW+COz/
 SjCxQRw4SpybON+8QKZ9B1YgJC8YBTKSVxELMj3EogSjy/CxIemNiLLtCLYK3mWn2BnK
 YhsM+4AAXuea7juAc/C2XD8PT0/MLIA8m+7+KsrAuCkNx02tfmNNYG6ZqVNvr4++2BA+
 fJmr+q8CusE/hf6KziXq3Docu4q6WkCYkHxVAT1tHjQaYrPmXFEedHIN5l+UrMVbCJHe
 GTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gUCcjpRBr+Fi47l76FgD/KxnEo5xnrYP9E1WqPCwG+U=;
 b=LvZlkCxwFXFO0RL8LdrZM45m2o3W11UboY9pS70NuTbXY/ek4xc56FzcFrZKxF7vGH
 Qv59WPog6sQi6mkUaxb0ZRlN27S3I//DRY6kdkO2Q+fwfB22Uqhh1BEBxxSKPmIf/diB
 ypaAzeK3LAMGGFs87954ZVLl381N1cMk4lZnIr74oCV1bMs1M+ShuDw20MdGtAIcHyCk
 wqnOdtY6yfZ4bVq+olwjygM8NNsz/FcH/9h0HxO+lS++5y3LfRtPpn2ByCMmrHoTS+nd
 cxIrwKkP65ye6OUV6S8eLKE/Go+g6suUZzTsn3sMUZe28zOfpFslfkqQgX3uN22OSohz
 LyNQ==
X-Gm-Message-State: APjAAAXnsaqn5lI3QfYX1xyYZy1WVMwh6KTA/PgfqSX8Q+jk7MoZCeAu
 p1Qgzx4QyaAF3qAcuiNz3lvauvLZ
X-Google-Smtp-Source: APXvYqxVMbAAWYnHjmx6C4VQXzuSIgR7MsdQ50svyvrEYw4NaD9J4KX3qeOHECHdm64M4eZDtCAT7A==
X-Received: by 2002:adf:e442:: with SMTP id t2mr37526394wrm.286.1561406409820; 
 Mon, 24 Jun 2019 13:00:09 -0700 (PDT)
Received: from debian64.daheim (pD9E29A68.dip0.t-ipconnect.de.
 [217.226.154.104])
 by smtp.gmail.com with ESMTPSA id t1sm14977609wra.74.2019.06.24.13.00.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 13:00:09 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hfV8K-0004qB-DY; Mon, 24 Jun 2019 22:00:08 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Rosen Penev <rosenp@gmail.com>
Date: Mon, 24 Jun 2019 21:59:55 +0200
Message-ID: <2531183.vupIu1JorU@debian64>
In-Reply-To: <CAKxU2N-=TpN594wD8f4CAksFbGXVtNno=VfT49VRAKb2wO0wrA@mail.gmail.com>
References: <20190620193304.30303-1-rosenp@gmail.com>
 <1894667.KyhJTWUrd9@debian64>
 <CAKxU2N-=TpN594wD8f4CAksFbGXVtNno=VfT49VRAKb2wO0wrA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_130011_945870_79D1EEF5 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain: Don't force GCC8 on ARC
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

On Saturday, June 22, 2019 8:57:32 PM CEST Rosen Penev wrote:
> On Sat, Jun 22, 2019 at 7:37 AM Christian Lamparter <chunkeey@gmail.com> wrote:
> >
> > On Thursday, June 20, 2019 9:33:04 PM CEST Rosen Penev wrote:
> > > This prevents overriding it to use GCC9.
> > >
> > > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > > ---
> > >  toolchain/gcc/Config.version | 1 -
> > >  1 file changed, 1 deletion(-)
> > >
> > > diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
> > > index ef9bbb82e2..e635244827 100644
> > > --- a/toolchain/gcc/Config.version
> > > +++ b/toolchain/gcc/Config.version
> > > @@ -4,7 +4,6 @@ config GCC_VERSION_5
> > >
> > >  config GCC_VERSION_8
> > >       default y if GCC_USE_VERSION_8
> > > -     default y if arc
> > >       bool
> > >
> > >  config GCC_VERSION_9
> > >
> > From what I know this would select the default GCC 7.4.
> It does. On the other hand, if you select Advanced options and select
> to build GCC9, it still builds GCC8.

Yes, problem here are the buildbots. They always go with the default
so they would upload images compiled with a broken compiler.

There seems to be also a interaction with toolchain/gcc/Config.in

|choice
|        prompt "GCC compiler Version" if TOOLCHAINOPTS
|        default GCC_USE_VERSION_8 if arc
|        default GCC_USE_VERSION_7
|        help
|          Select the version of gcc you wish to use.
|
|        config GCC_USE_VERSION_5
|                bool "gcc 5.x"
|                depends on !arc
|
|        config GCC_USE_VERSION_7
|                bool "gcc 7.x"
|                depends on !arc
|
|        config GCC_USE_VERSION_8
|                bool "gcc 8.x"
|
|        config GCC_USE_VERSION_9
|                bool "gcc 9.x"
|endchoice

I guess this means that one needs to be creative and pile on the
other workaround and "fixes". I.e.: something like

---
diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
index ef9bbb82e2..2a9dc289db 100644
--- a/toolchain/gcc/Config.version
+++ b/toolchain/gcc/Config.version
@@ -4,7 +4,7 @@ config GCC_VERSION_5
 
 config GCC_VERSION_8
 	default y if GCC_USE_VERSION_8
-	default y if arc
+	default y if arc && !GCC_USE_VERSION_9
 	bool
 
 config GCC_VERSION_9
---

Question is, do we really want to go down that route? Or is there
a better solution? Because this is ugly.

Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
