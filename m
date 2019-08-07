Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC46285374
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 21:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/m2WKRL7FRCcTSelSn97Jnmhs8gfsi++dEuSMJPcXo0=; b=R2kDjyYR47JLXc
	KIukXIvNODU/I+RjYZhZ7gTawPOj/dSnaZDjMEyy6ULgeq1JinJUW+N7QHqgqLbOT6rsYSLzSmgCT
	VLfKa5Lb+MmyAnTYUNmZ38/utnMJ58oH2SG4C1fHtG8qbNGHxZaYwH60TQUahmpPIsyW+vCUtcC5M
	XIGgAlasVvd1Obk+GzeUV7uXPBZFM5QSIy8/9u7K9CPHkrLtWw6Wa6XMCodns33pxYQNwE9dN44az
	0aANLMZnkfdFCfmKEBfyuRwgrk/VzWPUGgcq+MMROwJX3Y+i8BPtvXZBKZ4bI4rVx8zltZypmGr+G
	NkN+4DwX1bNUVaxearrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRLX-0001wS-3z; Wed, 07 Aug 2019 19:11:39 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRLM-0001w3-T7
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 19:11:30 +0000
Received: by mail-ot1-x342.google.com with SMTP id s20so43172789otp.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 12:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1VV29Ftl7bIMyay3HOwKTIYAVHZXD0r5IodH0XHvWLY=;
 b=s0CE0ryNkWaPkulXgesGxR0oautDgAFyKHWttTtD0aWSLE1pxID46i1Lt46xEbdZcN
 N2KFuR2n34nY4x3wLXfF1UQ4sBDkt4GEO1Ko3+102IWraMcMGHsIMnrmLHLnsiSXW+2r
 xiqDQVDKcG6hW5CrzUCR8cGMCfg2m0HElfLgH9nczBbQt2Bl7YLFLVmGhOajbPMlHtbJ
 VA2wmuj74GVgE7ZtlJwqsdyzUtGjsYIH1x+N4vT+Nrs6cYe4+0x3XQT9bMCwLbZ7qSaE
 PL/p7tu70VyeTivPKmnudQWS/2x3WEoSufH5IGVLHTuk6LURKpvXIZH7lKKznnK28hSf
 iF2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1VV29Ftl7bIMyay3HOwKTIYAVHZXD0r5IodH0XHvWLY=;
 b=crGa/lWpHyq0VtWNTjgsRhU67s4g7nW/Jz9pMycZx/YwCm/vLTe2epvuDGCMv7TGiO
 FOw/l++z9pkPMRzvZAYB6RRVmhfiK51RD+p1ZxUbQgalBdEha7qPgcehphU7IDgkykj2
 eZdkW+hbrqAyXkwG0G3ptwVGwkOzvsnpL7D4ByVcyoL/+i0wHyql9b5r11A6APGdYKZ1
 KyXTyGm5fLMyKA5O3WOQGdJsCnuzgkqskwMkZ0MHBn0mkLVssXIg2Ali4psNYRHIBeWn
 P+inR8pew6IGS0VSKIrHCEARK1FONt+EHbDeHmuJHt5FcwAuozu72PwH0oAPlqNAFwF/
 3l/Q==
X-Gm-Message-State: APjAAAWpQYYmUVH4lB4WAVwTBnnaMTUYpX6x4CR+2I3sl27PTMnwYSJS
 hoITSk1xGkJn9ZkDlFekiYBK13Xnj7U12h4CNI+T8fbI
X-Google-Smtp-Source: APXvYqzufVuQisdbMjDw2QLSkw502++nD20tSc976tAKxjdsuOWI7O2e5FHlyOPLahGZxYWrH2WBH3cWnvmRU7s9v5o=
X-Received: by 2002:a6b:c081:: with SMTP id
 q123mr10738770iof.210.1565205086610; 
 Wed, 07 Aug 2019 12:11:26 -0700 (PDT)
MIME-Version: 1.0
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
 <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
 <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
 <CANoib0GUUxSHCp5cRkjyiQykuRookSNdiVyJr4Bf0yE62fYSpw@mail.gmail.com>
 <02a201d54d51$4a49add0$dedd0970$@adrianschmutzler.de>
 <CANoib0Hk6buOR9tJ5F+3EXd2c-MCGiE0X=M+Yg7_R_+fP5zWdw@mail.gmail.com>
 <02d001d54d53$6218e280$264aa780$@adrianschmutzler.de>
In-Reply-To: <02d001d54d53$6218e280$264aa780$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Wed, 7 Aug 2019 22:11:15 +0300
Message-ID: <CANoib0HHTDNcBTUTK91s7fef5m8s=TnVUhb2Jg8UELbBKNGeRw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_121128_947011_2DB3ED71 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear WNR3800
 (Ch)
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

> You still have one WNR in the commit description and you can remove the DEVICE_VENDOR, as it is still inherited.
It looks like all the file should be changed to VENDOR/MODEL, but you
are correct.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
