Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185A11550CD
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Feb 2020 03:57:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cctEZ1lDl+pst3f2k+9/wqpVIC953RLLM2VFbEznjKI=; b=HHVTyOjakkMAOB
	RXchz0NrzPRhQhFllmMwzwRfdpwdJO07flc5qEPE0Sf70FHuU4NFiPfzsfPtHONy6IxxdUYB0Blhs
	1OldfEvidcJ2LeMoE7YlJ4LRYaGwuWSapvjGbmKH4w3IZrKQDbE3Pi/PGMVLQH3QEB003RDFkjIQe
	5Y1StNoK+o4NWY3H1EQkHKA48tv7RV8yNCgNlZbjeQN/+U/d8uIQRIwbm106ptLSpNk1jMRzvPjgH
	w2MeGzD9WKhYdMIPqhrkMkNUQfacuL4do56xSdLVTVDzA0bkkDej6H7iXg7XsK6nc2rp1G/JniLOG
	7n05F4fEPQDp109aYJXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iztpb-0001Gp-MC; Fri, 07 Feb 2020 02:57:23 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iztpT-0001GY-9S
 for openwrt-devel@lists.openwrt.org; Fri, 07 Feb 2020 02:57:16 +0000
Received: by mail-oi1-x244.google.com with SMTP id z2so631636oih.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 18:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qZWCD63F2tWhD6TRDpaUJlyCbNJHVts0wwCMOlUTEC4=;
 b=ObTGW3Ip0eklJaZNQd2FU2LO70f4V1ktqno+fenYniMW3e3IlgjQ4cLd/WS+sczf7i
 rslnnHT3m2ErG/OI97GFsUxOGRtQ2k31g+jUd5skn5xT6tfgBouas4DBdza17dAK+wft
 3uc02vutzTMYviPAoO5yayjQ/qJGVgBgAfstkNry8fPBuEGdQM2ZJNYpxb/fWXUINAEs
 deLkdy+8iVjjl8oBVaNOBBX32oJ1IjsFc/QizYTdRrPqCH7b1hkx+bhRMAzzfvTvhmHL
 m/UMQI3nH+grs7o8NzTAsduOQ2BEyBaKHL1fkiPzGwN9pkHr/e5/f9z935ebc6NEa1WD
 zA1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qZWCD63F2tWhD6TRDpaUJlyCbNJHVts0wwCMOlUTEC4=;
 b=KZMPaUbbPp1efa7T9NIrsXohytzG19ruNFIUWk9bkwpvWydUlBdrSUfkhV2Xkf56+c
 ILq+q7vNwH5B/JxpHNREkMr0UXu7Zej3J1i6si4iyLo625KpXSUU896POwn8bIFm4mTg
 SwOt1V42oagqlI/05T6xAFIlk5Y1smnN6MoXHd8BKlBpWudsd0x+U0tUv26aWcf6aL1m
 gu+3xRuNifvpBzf1YAZoVt1eqdltQCk7TqtMdBK4fnjVDDZ2G6lREwUVROmxHpJ4E7Zz
 XQN9FXyATUj+jbqJBYpykPHjmmlOs1rgQKS71NMeps2VpR1VU3VBsJaX/LvnxsBTlFe7
 dK2Q==
X-Gm-Message-State: APjAAAWmO3yZt+jmUPK05jXjhpk/Ua+Y8zZp8+Q+sw0EMjvtBLczh7wR
 uZUUQFvhdUR3p2kProlkzlYqHnRANRLpEO2tAwE=
X-Google-Smtp-Source: APXvYqx5uvDR4HKTBrszTvcHBnL8Kb3lc2cMGOyA8dNtt7n+hXQnjf5K78cxkhatJTsjt7sdylVlxcQeoYW/fIJLCEQ=
X-Received: by 2002:aca:1a17:: with SMTP id a23mr640903oia.84.1581044234389;
 Thu, 06 Feb 2020 18:57:14 -0800 (PST)
MIME-Version: 1.0
References: <CAJq09z63-O6xaxpBDLMdHF54Zivc8tmh1Y_AR_em5xtC+T9YCw@mail.gmail.com>
 <CAJq09z6y3GsSi3Efs817kuHkpp_M9C9gZt+GPg-hr3Ju7TfQzg@mail.gmail.com>
In-Reply-To: <CAJq09z6y3GsSi3Efs817kuHkpp_M9C9gZt+GPg-hr3Ju7TfQzg@mail.gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 7 Feb 2020 10:57:03 +0800
Message-ID: <CAJsYDVLvPR8BRe=WGh0Op3a4dE+4CBkyC7_HeEyBcHiwOo=wBA@mail.gmail.com>
To: Luiz Angelo Daros de Luca <luizluca@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_185715_337025_1615561A 
X-CRM114-Status: UNSURE (   6.13  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Random data on rootfs_data for tp-wr2543nd-v1
 only with ath79
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

Hi!

On Fri, Feb 7, 2020 at 6:44 AM Luiz Angelo Daros de Luca
<luizluca@gmail.com> wrote:
>
> Hello,
>
> I isolated the problem to be kernel upgrade from 4.14 to 4.19. If I build ath79 with 4.14, it simply works.
> The mtd problem also happens while booting 4.19 without touching the flash 4.19 (using initram image).
>

Flash reading is handled differently between 4.14 and 4.19. 4.14 reads
directly from 0x1f000000 where spi is mapped. But the interface used
for that got removed in 4.19 so bit-bang mode is used instead.
Could you try if removing
target/linux/ath79/patches-4.14/461-spi-ath79-add-fast-flash-read.patch
also breaks ath79/4.14?

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
