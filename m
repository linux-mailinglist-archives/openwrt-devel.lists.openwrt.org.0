Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE59C9920E
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 13:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zN82ORq+bPHb+hHPEwIzEuxL7/E8pB/x0Id5jrtzGy0=; b=FxtsqX8jcKnh8r
	Ijgi73Vb3yExbzdtTr8UFEair5vlwLY5iQa+2mRSe5rWhcdKv/2NvOT1Yn7et8tPGwW418dQnzi4+
	Uit9jI5xBwooL9n2CFgjrEg4DMpNWTgy5nRh4XmpGYM/ZXR0+Am9tlK3fIRsRhkrbXhA8qUqL71lL
	iTPWLqhBCb68km5GDxunwo/BFYlGH2U3xVXuP4Lke12IGdxauamjkwW4gpZJw9LqFQ0o06u2jfDCg
	y3UkMQ6scuw9jV8ewUES28+wDCNaoRt+xu0JdyAlaxClRC7syyaw0/U+wEA1ya6jCKrg88DYnbe5l
	QaTzeqWD3Akv682fGH7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lHG-00049R-P8; Thu, 22 Aug 2019 11:29:15 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lGt-0003yw-Q5
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 11:28:53 +0000
Received: by mail-lf1-x144.google.com with SMTP id c9so4273334lfh.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 22 Aug 2019 04:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GO77CHoflvOg0aMfpRM1qrBM3EqtPWrhhDEirlfTS54=;
 b=AApBX/bWsWrHNc0n7k8HJ79exJ1BWw5Sb8axRv+h3EgswQdgMmS4JDT3vVGsiMi8oF
 ekNgROikB1HOAg9NaNRKXDvwHGwpnAobopw9wBCvhLRJTDcEg8kWRJT95xEBV4lwAr1z
 IxYWlonHLyoMtU7fPiQ5Llyq8YdZ/8+zrS8QnIbAZRpl2fTvpyc7J2kS6nRUjhlvSJkm
 BJ9bWOyRce0U4vk4Ymk2RN1CG3UX0x6QErBUBkp5dXv3JxwAK/XzYfvl3obzDGnVgmBu
 2LwR9EDuBgh2vvjq7TbHlD0KDat/OHg0GgVWdwpp9WbaJYI0gju7tOOTmTuj5ejI2K7u
 hT7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GO77CHoflvOg0aMfpRM1qrBM3EqtPWrhhDEirlfTS54=;
 b=BfXfnrxQulfSYF6wNlAgGksaEfNtRmVeSiCGb6Ds+ELX5D1UocrhujxsHfq8miqstg
 2IQbQmgHwI8w3TUdrjvfaDnmXRWEOSeqVOifk/UBYcUCb6Q7nODQceGL691vABZE/0DN
 1YiJbZQKEZ2aTlFicsGn6aWQ207s+4rR8AMgBIstfBMFKNU2EJuKi5mDhG7Oyys3E/oo
 zbpH5+YdufjczbYaVN57v1MvmfVBJBYJvy4ym8Qx6mEhwfLgSvhkBRE0B3MxdyjO+Lop
 sy9/Q227uh1SlGrMTCsTznKFaYZhjE2gMbt8tOXsivictI9Mvio99q7Rhwaj0EDQb3vG
 c46A==
X-Gm-Message-State: APjAAAXlEslVorrNKckCN9lehNMlhbNSUY0XjV8LbUeaWPMyadSBJQOL
 qBjE5Ml2kinl/IIu3j2+Rk0=
X-Google-Smtp-Source: APXvYqxAaNUFWhtJJ3JRuNh4Ix6djPH2jRyivXK5rDfu8APL8keCjECxwkmHdvJgbffddVhRWjPPHg==
X-Received: by 2002:ac2:5336:: with SMTP id f22mr21112578lfh.180.1566473329919; 
 Thu, 22 Aug 2019 04:28:49 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id n7sm3920096lfk.24.2019.08.22.04.28.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 22 Aug 2019 04:28:49 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-8) with ESMTP id x7MBSlsx030744;
 Thu, 22 Aug 2019 14:28:47 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.14.4/Submit) id x7MBSkor030743;
 Thu, 22 Aug 2019 14:28:46 +0300
Date: Thu, 22 Aug 2019 14:28:46 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: mail@adrianschmutzler.de
Message-ID: <20190822112846.ilwhivzzd3qcljl7@home.paul.comp>
References: <20190813165904.1988-1-fercerpav@gmail.com>
 <026101d551fb$78adb9b0$6a092d10$@adrianschmutzler.de>
 <20190822062706.dmpis5iu2uhp4zmq@home.paul.comp>
 <00a601d558ca$7f9336d0$7eb9a470$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00a601d558ca$7f9336d0$7eb9a470$@adrianschmutzler.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_042851_998021_11C6C346 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Xiaomi Mi Wi-Fi
 Router 3G v2
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
Cc: openwrt-devel@lists.openwrt.org, 'John Crispin' <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Thank you for the reply.

On Thu, Aug 22, 2019 at 11:18:01AM +0200, mail@adrianschmutzler.de wrote:
> to the existing configuration of the "Xiaomi Mi Router 4A Gigabit
> Edition (R4AG/R4A Gigabit)" (without adding a new device).

There's also an issue of R4AG not present in upstream and I can't see
any relevant submission in the Patchwork. Adding patch author to Cc.

> Unless I misunderstood something, this has nothing to do with
> SUPPORTED_DEVICES which should be removed, unless Xiaomi ships an
> OpenWrt distro as vendor firmware.

Sorry for a confusing quote, I didn't mean to imply SUPPORTED_DEVICES
is to be used here.

In fact, Xiaomi does ship an OpenWrt-based distro, it seems to be an
illegal GPL-violating fork...

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
