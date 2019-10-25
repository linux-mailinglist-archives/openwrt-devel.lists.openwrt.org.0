Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A47E4885
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 12:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y73NbZ6pAFcFpUbKkkGTg/QdynQWk7jYANmdGDtvBUk=; b=hWyn/RHB2Om45o
	MonsM09af1F46zNq6fJoV7dfcHGYuHwl7dvTaaXghCGPg/BdavOoH4M4sGT9vaiule6GgsR9yiWVo
	s/CHrWZqJEOpDa2WcPO6bBLH4J3HBahPpWqSoUtfBUGWftUQ4we+ZeEFHsx8c/prcOWog5wDxoy1z
	kMdqZ1soBtaGh5QkAvTDqxyS84bMf7T+DamiwenKpV6Pp7mXbMcCo9MORpJchS5fmihelzIB/6CNv
	oSRv3d0Sn2pFoYT1ykU0tDHsHrgIMEfP3FYs1nB+xyqJy/bcH/+T+0foGyHMMyaLalX/Fmhyz3fII
	a2MvNZdFPJTEr5wvTk7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwkb-0001xz-Mq; Fri, 25 Oct 2019 10:23:21 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwkU-0001wt-2R
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 10:23:15 +0000
Received: by mail-lj1-x236.google.com with SMTP id k20so820028ljk.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 25 Oct 2019 03:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+AarUUOWmj3LCT5tTM4ap530YbVeHil2KmHVqFIbsbY=;
 b=vOFshmbk6osoGbcjZIBNsNlNiOwh2780rGpYtTVrG+oeqOwX3JQqUScQxn0Wm9wpkD
 Z0Eyi7MJ/eo4+6oeDlGh/+cDYnztymq+JW+dsL0+CqMVr4wGRZk2FI5uRxEW0xjnkT8a
 ACXAnpI2cawmQ28irYb8LOKrP6gKQm/YWyHpJrguiDX17BWz29mFf73ZIep6N8wEGtfG
 8osbEuk+NmK5jyLjuU49++GB8iBA33zWMRnTD5n8fpnfeA8qUv14E04i3mrPkQnw4ob8
 I5NOD4Vb3sr4Mlw0FRx3nP9Lb+fcIsHiHposQjCW1VaYJ8euI3Qlk2U4wghImpNJdxha
 tc8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+AarUUOWmj3LCT5tTM4ap530YbVeHil2KmHVqFIbsbY=;
 b=SNNHzpxsozrV0u1dtirziLB7PTJaOuIkOmOX5DGHNomXEWKIZXT8j+QcYijFjbVUPq
 T4p4urt15d83+tJ8YCsOUxy7jV+ehR14r1lox9J62+sRGJw7jx1V8ptJSIahnSZcmhRj
 OW8oecAfd09IuNE4vssyKPwnVahgElUySjSDCA7u+BJ1iXME/AGS8zIJkiJOQWB8Ij9N
 Pg5clCvHK9ex+RJQjz7QyOXSQWoMgjeJegDrUX1C+ZOmVFf/09NQrOq1N5z9hk/TR6Wv
 AO0X4c7e0Twye9D5H90I1bl35GUH38tI0Zql5NbV/4aAjzZwWTlTOWaPUUGl1+ZrAYq4
 kijA==
X-Gm-Message-State: APjAAAWIZdfLD6kLQmf3W3lVVgnv9UlJRvWAC1830kFTrsHa2Hn/coG/
 VrpTmJPPssnTOghEtcSR6aNcyya7
X-Google-Smtp-Source: APXvYqyH9YtA0B6zecHx1+3ARorl5Kup8f70qrxhxi/QrRomPkXb0lRoaH4FPabR94E2cR2sOPgMBg==
X-Received: by 2002:a2e:89c9:: with SMTP id c9mr1837795ljk.108.1571998992218; 
 Fri, 25 Oct 2019 03:23:12 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id 190sm651091ljj.72.2019.10.25.03.23.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 03:23:11 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 x9PAN9tx019222; Fri, 25 Oct 2019 13:23:09 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id x9PAN9tt019221;
 Fri, 25 Oct 2019 13:23:09 +0300
Date: Fri, 25 Oct 2019 13:23:09 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: mail@adrianschmutzler.de
Message-ID: <20191025102308.GD1190@home.paul.comp>
References: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
 <20190828090924.14695-1-fercerpav@gmail.com>
 <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_032314_111624_B0E41AF4 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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

Hi,

On Sat, Aug 31, 2019 at 11:32:33PM +0200, mail@adrianschmutzler.de wrote:
> > +	xiaomi,mir3g-v2)
> > +		ucidef_add_switch "switch0" \
> > +			"2:lan:2" "3:lan:1" "4:wan" "6t@eth0"
> > +		;;
> 
> "6t@eth0" and "6@eth0" should be the same, so this can be merged with cudy,wr1000.

Done.

> > +	xiaomi,mir3g-v2)
> > +		wan_mac=$(mtd_get_mac_binary factory 0xe006)
> > +		;;
> 
> This can be merged with elecom,wrc-1167ghbk2-s|\ etc.

I rebased to current master and added label_mac (as per Roger's
suggestion), and since I can not be sure about all the other devices,
I left the dedicated section for this model.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
