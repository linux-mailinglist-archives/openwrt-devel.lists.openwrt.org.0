Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91947176080
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 17:54:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WG0EsjToePZK5j+rAo2413venlNxBQkQI8LHwUYlr+4=; b=ldyiXkhlTcrLdq
	x3tCs6dL2ccuL7PVMPQ6nrDF4+BknF2Ltyoemr+aXuCrHYAafa97yYGHofbX+r2ppigQdkt/A8QL/
	uB7d9ARmK/smJCH3HP2rgw5Z+BzoWH12rvuCAIzNok7zuUsHs+Sq5uVuJKXrKgbbSqllSZE8/lKer
	FySa+XnIEpqwd7ArsnZwd2OlqieLRL9JjBnLYgNR5bVf16hc9QniawNqaXH6b3R5cXYgSJT4/PBnK
	u1qOoFE991Of1lvA/vHR4PaZldKynYpFJX4z8K6eqohrdzNjwYtnvb9mvTL6o/TnUsEjvVNqMZjIh
	EXerVOocNFoioi2rBFkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8oKg-0006oB-8J; Mon, 02 Mar 2020 16:54:18 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8oKb-0006nS-Dh
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 16:54:14 +0000
Received: by mail-ot1-x344.google.com with SMTP id i14so3307364otp.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 02 Mar 2020 08:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rDP4SdPuj/p9OJ0SSGkDnwwA99jUuZfoa7HCIKwV5vE=;
 b=DBniqqnZen5iHhYHeyMmRXJ67ZmqW/yf0VjXwimUEZ4wbQn2cRe9HHhshAL4hBmaRL
 WD3SpARVaf0JLRJNvlrwqoS/upvAgQn1YGb7l9+GB5O80011qknmPa29EgF2NSLabeua
 F4ztAzV+AhY/2a316qUuJEEkAGWK39ZwTmEknmMP6I+YjKX/5dfwiotCm2NrpQgUmKsz
 Cj1SIt45IxuWV3/5DjoEr9Fo1vAAUOeW7EuPwXDaIccFWTMwmY6QcVuGZGSOt6YZrcPU
 O/lEeCAnlkJZwZjIxhDkPOLfZr4ocQGO8oKUU0w3mpVh1/QSMwEln6YcVe/xsjrjV6ox
 DjzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rDP4SdPuj/p9OJ0SSGkDnwwA99jUuZfoa7HCIKwV5vE=;
 b=pd+X0HgU4l+x98kzarBHshbQlXyCI9alhYrAgI3uaylI1vE3WiQ0plXFklZNCCIou2
 A9j+J0o5hcDvN/0p0Cz2DvXjXZc//Hd6cLMCBRNkHNbi48eFoSRT0B3KTI+AOnFVG3F/
 VrzeDG816ptqhjHM0c4yePQ9YWlS0Ujr0mr6oBsyt1T2NY7HhcmMcebb4tlk+HcGE1z1
 KZf3hiTGeSZxODYaw6x4gC7SOS3dl2PAMiVqDnC4N9FQA9UCS+BTQwVMkzR+CvwA4c0B
 c82HczxA4xydQFtvlrs6p+P3trqQRMFTwU0gBiOJsSMco71TH1OCRDAIbzHUxH9qx53p
 WmdA==
X-Gm-Message-State: ANhLgQ0YYN2NkVad6VCEzI+ed4njeF+6Y7mPPhNTsLNOnNfzrdCGdReH
 OQs/jzXQs8i8VdK+RNsVHWenfFESjHc7sa0YML33fw==
X-Google-Smtp-Source: ADFU+vvz1pi36FxJBTfu+wNMSiffFvHv8J/tP+m1LGZxOjLl93fbJNwel+IW3AzL8REgQJ/dmw7ZwgNqmc9b2zB7RY4=
X-Received: by 2002:a05:6830:57:: with SMTP id d23mr98551otp.224.1583168047891; 
 Mon, 02 Mar 2020 08:54:07 -0800 (PST)
MIME-Version: 1.0
References: <1582918410-12875-1-git-send-email-tharvey@gateworks.com>
 <009701d5efb8$f257a9f0$d706fdd0$@adrianschmutzler.de>
In-Reply-To: <009701d5efb8$f257a9f0$d706fdd0$@adrianschmutzler.de>
From: Tim Harvey <tharvey@gateworks.com>
Date: Mon, 2 Mar 2020 08:53:56 -0800
Message-ID: <CAJ+vNU0w6OiUqvxMS3V-Dk=Rdps8kmShKhrjKrhm-w5xjkb8HQ@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_085413_601294_6DC20D05 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: add support for Gateworks
 GW5907/GW5910/GW5912/GW5913
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

On Sun, Mar 1, 2020 at 3:02 AM Adrian Schmutzler
<mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> > --- a/target/linux/imx6/base-files/etc/board.d/02_network
> > +++ b/target/linux/imx6/base-files/etc/board.d/02_network
> > @@ -13,7 +13,11 @@ case "$board" in
> >  cubox-i |\
> >  *gw51xx |\
> >  *gw52xx |\
> > -*gw5904)
> > +*gw5904 |\
> > +*gw5907 |\
> > +*gw5910 |\
> > +*gw5912 |\
> > +*gw5913)
>
> Is there any actual need for the wildcards here? Shouldn't just gw5912,
> gw5913 etc. be enough?
>

Adrian,

Doesn't look like it... probably something that used to matter if
board names used to have imx6q vs imx6dl but they clearly don't
anymore.

I will re-submit.

Thanks,

Tim

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
