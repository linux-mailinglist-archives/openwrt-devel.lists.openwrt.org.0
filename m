Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E53417EFF8
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 06:21:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vr1Q/af7xl4pEqsNjsjtBi3wjMYl9Raet+6as/M4vck=; b=s3ogr8j9xr4CE0
	bi7rCwYhSlBYGZ/wfdGSuXoSOkkCL1wCe8JCwWEmbQME+eJf/Rt6dcDB/UFASRAMKl/w5Of7pLqJU
	oIYbLH6oyWyzI2f/0wunPWhtuQXoW2iYWSKOWkomdyiteAmykFzM+tVv5QDMMyBD6b70Zd7xSGrAn
	6As4WJupfFRjoUPdlwmRRyLtDU6YB3rIMC115wpXQ9vf+DDbnuls7MuS81FWQBcyG4hC/BS1SO1EI
	vaL/jQyfpuSkJn+52AOyAqD+AlkxI8j5FYDQKIJhO0sOzjkXLMNqftIiymx5IuxHF25fpm52MLoDR
	kkaJTu7TjSmOamBQc8Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBXKI-0001Fh-H7; Tue, 10 Mar 2020 05:21:10 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBXK9-0001FG-6n
 for openwrt-devel@lists.openwrt.org; Tue, 10 Mar 2020 05:21:02 +0000
Received: by mail-oi1-x244.google.com with SMTP id w13so2170214oih.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 09 Mar 2020 22:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TZyS7rXD2NcGSmQtjrvcFqYpLQdXmBC/6iKDgIJj72E=;
 b=dBOMnbegHnliTrQWqMpM3mDSi9tHa8BnND+t6shwiIEqUEyR92ipdR8mOdeV7Nydsc
 QkIJ2YwUa5k0Va7xWKOcMhCu/XZkGpcyrWm0+NROzwvgZ1sZXGCBgBnRmuK2GUrYkHwY
 Ro1xYdO+Jlh6zDw3KQMXvQ8CI+dU/zlQDsMUYnEl5k4EK9YShKNZcmHz0DJ3aZieax9R
 aZ0EGXwRxfQFHMo6uTGvFyzfmjZi3F38TgYDM4nrrk54EICNk0oX6CBE5Rp3A1evAsAL
 NOig5RMle6LfgNKOAWFoZ8Suijz854FwAIbzKosUeNout+3Yy8WpqYUuo+vovYVKpQUr
 n9Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TZyS7rXD2NcGSmQtjrvcFqYpLQdXmBC/6iKDgIJj72E=;
 b=lhOzUPVpcAUZqkHaGMKGUKegCeMeN9jmPh62HX9D9noOXAqVNUVWBcX+osmmIYKVBD
 CTmj7CzM11V8ugG8CMGvtvQRiyTdaE/p0D/rrdVT090fvWVFUDhCo5bcZg05obSYj6Z3
 hNhRX/N2txYcZAVvo3Kmf9u/YPh05cMJ2AJU+5Iv/EQG4SYX8ldVA1dNDX97a4xio49q
 mGYDpUSF/kdg5vAJ1v0dJeoV4s93HxZNxDt3lPZbQcRnwJdrxVB2Bx2my6bpE6f7QGtN
 nUWB3RnKUGsCoN517u+lqhI1dj8fjhXCtqkJTt/lX3ETYlMwpmEnq+fynOUHiGBO2qC7
 p+wA==
X-Gm-Message-State: ANhLgQ0xU3sWDSRz0tiK6z/ocuvSgFmeFk+keHrZsBo2gnkhPKkuHy4u
 rPYeXsV6MU3zRERGpTCKWYCxnBF0rJp78yIZhp27HiuaRFM=
X-Google-Smtp-Source: ADFU+vss/763FNxHnNL/iNlhfLT96Vrv+h9Nq8+82cA4hQPrec0RzF8z/qj+pNHdm6PfbsEHc0JMpGDcGzC2mBBfsjM=
X-Received: by 2002:aca:1101:: with SMTP id 1mr103816oir.30.1583817659848;
 Mon, 09 Mar 2020 22:20:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200309010710.11599-1-mail@david-bauer.net>
 <042501d5f60c$d39e6030$7adb2090$@adrianschmutzler.de>
 <b22f1121-24b4-cf59-ce2a-78b0dcba36f4@david-bauer.net>
In-Reply-To: <b22f1121-24b4-cf59-ce2a-78b0dcba36f4@david-bauer.net>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Tue, 10 Mar 2020 13:20:49 +0800
Message-ID: <CAJsYDVJFzNp2TsereccP9AGaSW-7D9XV707ML0m6ukVMoMLa8A@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_222101_275084_6EFB5B50 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Ubiquiti UniFi
 nanoHD
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Mon, Mar 9, 2020 at 9:05 PM David Bauer <mail@david-bauer.net> wrote:
> >> +&spi0 {
> >> +    status = "okay";
> >> +
> >> +    flash@0 {
> >> +            compatible = "mx25l25635f", "jedec,spi-nor";
> >> +            reg = <0>;
> >> +            spi-max-frequency = <10000000>;
> >
> > No higher speed possible?
>
> Last time I've checked, the SPI speed was still calculated based on an incorrect
> reference clock for MT7621, thus the frequency defined will not match the one
> configured to the hardware.
> Are you aware if this has already been fixed in Kernel 4.14?

This is fixed by the following commits:
ramips: fix cpu clock of mt7621 and add dt clk devices:
https://git.openwrt.org/c7ca224299
ramips: fix some clocks in mt7621.dtsi: https://git.openwrt.org/ed25e3ac02

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
