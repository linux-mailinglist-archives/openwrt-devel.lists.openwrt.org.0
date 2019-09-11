Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4983CAF38E
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 02:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99ncIjro1uc7ty+gbK3JMSBjea7TZaNrxUHwpXG5eNI=; b=IpAci7wVfMrwrs
	ruxQw5Md25KX8DEcOqI9bfMZmV35ctoUDd/MFAafuSOvd+L97mk8JIkiCQy0uakQWNm7b+iokTkLR
	Vs4VsL5IkHhR1OPMJ8t6jFeSRx+UZ1qAd4kFu4hX9K3mHt5DxMjolNim6Ot8G/Vdc60tU+b88+4NR
	7qQb9LMCCwwbORe7oTTZX1PcdegagmNOOMf8aF2/GzcCh8ClBphxgYpmAhyvM8Qc/xNSXbO+45Y7J
	hPY8Os6cslGjYuywEpIWrnghTK035JmV+hAdHrkV891GBeIwuU0KM3vqd4X8By/aaMNmuygkjK3ql
	iRA4MV5u603izhP/N1cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7qAd-0006GT-T7; Wed, 11 Sep 2019 00:07:39 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7qAP-0006Fs-BH
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 00:07:26 +0000
Received: by mail-lf1-x142.google.com with SMTP id r22so3620879lfm.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Sep 2019 17:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/cF+Bxdxo7hTKqpeo59At6nf3t8r0IPWLflLOEkS/rg=;
 b=na5wvCH0oIrikMiEb0LJBJX9rpg6L+l9TKmNCHO3F4FQyjvh5Oy0tkh22/EhZkhd5b
 RYWrHWyjekRPliNqlupu+Kk6nbJh1tjFc6Wds6WMKQ9vbHBkEP8VT/aaZdPVRZ4AceTS
 UHlZL6Qh7Z6lhouN4xtavCR05WEXpu4k0grdfIezj2fUlL6JSbi6rEhaFsRbOVm12lU7
 vlI8/NzrHM7GLjq9gdvS19MM9ZpOIpw2kE85W2GLs+EkeBf+A/FvyvlvotQxs6kMLPOx
 P4bMOgXokKvU30XQ1RQzdYir2o3nQVoqYeMeP4JW7UEP96I2mqL+e2yiPN2QmOXfbmQO
 EHsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/cF+Bxdxo7hTKqpeo59At6nf3t8r0IPWLflLOEkS/rg=;
 b=jUMVpx3qLa4Rc10bpY1z5es8OInilDCrEbJoscUO1YHal0R9Gbby4KNyfrQU1vwdA6
 fuHOYslncuGeBtWXGB83acZFI3YnnzRsK4bXWJ2N2Kh1q1cvybF0cIcu/vfUAC4IAdym
 bGQoELQ4tcFZo3WTURUmFnDnwITYseDGt0zjjb5dgzhafuSfU2V8er6Qz3kW+Xt/wrSo
 cmdeoNf+X/gjJvwW1/0/wH7nZQyObVKf53d0kUPKboQ1/xjTq//n3E3r9Rfwqo7xo+H7
 rFVwED+FqkdA1IG7jz8U5GKIy6nLYfYAbekUVlTcXy6zNj2UXHzhshrSG3sOXxmYhsQ/
 GGYQ==
X-Gm-Message-State: APjAAAV1/QSvUMqXHhA9DyMmhFayA4vUsAmYPLiXBa6A/ANbbUSoIvSb
 afCEzgxKPx55lXfbVxvy9rpVuiiIEEv2eKluZRKyFQ==
X-Google-Smtp-Source: APXvYqwLhnz5jBbZXrXrqbbdjEOx2exmkQKvfcePUekd1vuJdJH+LG4117rdJ4/i8hQJu73n5nxdEzA++cUM1xuakgY=
X-Received: by 2002:a19:8c1d:: with SMTP id o29mr22681155lfd.73.1568160443870; 
 Tue, 10 Sep 2019 17:07:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190910102221.125803-1-yszhou4tech@gmail.com>
In-Reply-To: <20190910102221.125803-1-yszhou4tech@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 01:07:08 +0100
Message-ID: <CACRpkdafRmjQxNKQOLuUwgOtNsTDsKDo_27-0sS958vp_j3v2A@mail.gmail.com>
To: Yousong Zhou <yszhou4tech@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_170725_450885_A6D9017D 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] gemini: image: fix race condition when
 building copy-kernel.bin
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
Cc: Roman Yeryomin <roman@advem.lv>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Sep 10, 2019 at 11:22 AM Yousong Zhou <yszhou4tech@gmail.com> wrote:

> Make treat copy-kernel.o as intermediate and delete it when it's no
> longer needed.  This can fail when the same submake was triggered
> multiple times for different devices.
>
>         arm-openwrt-linux-muslgnueabi-as  -k -o copy-kernel.o copy-kernel.S
>         export MAKEFLAGS= ;make -w -C copy-kernel CROSS_COMPILE=arm-openwrt-linux-muslgnueabi-
>         arm-openwrt-linux-muslgnueabi-objcopy -O binary -S copy-kernel.o copy-kernel.bin
>         make[5]: Entering directory '/builder/shared-workdir/build/target/linux/gemini/image/copy-kernel'
>         arm-openwrt-linux-muslgnueabi-objcopy -O binary -S copy-kernel.o copy-kernel.bin
>         rm copy-kernel.o
>         make[5]: Leaving directory '/builder/shared-workdir/build/target/linux/gemini/image/copy-kernel'
>         # "App" partition is the rootfs
>         arm-openwrt-linux-muslgnueabi-objcopy: 'copy-kernel.o': No such file
>         Makefile:27: recipe for target 'copy-kernel.bin' failed
>         make[5]: Leaving directory '/builder/shared-workdir/build/target/linux/gemini/image/copy-kernel'
>         make[5]: *** [copy-kernel.bin] Error 1
>         Makefile:244: recipe for target '/builder/shared-workdir/build/build_dir/target-arm_fa526_musl_eabi/linux-gemini/tmp/openwrt-gemini-storlink_sl93512r-ext4-factory.bin' failed
>         make[4]: *** [/builder/shared-workdir/build/build_dir/target-arm_fa526_musl_eabi/linux-gemini/tmp/openwrt-gemini-storlink_sl93512r-ext4-factory.bin] Error 2
>
> With this change, output files are directed to $(KDIR)
>
> Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>

Good catch!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
