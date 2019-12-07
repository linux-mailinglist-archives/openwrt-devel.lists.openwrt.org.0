Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3E1115CD0
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 15:05:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+WnyVOhsrUVvVi1NSQ8d7q8/AXthp+VOaGR/VJ88xc=; b=aIUsiNqdZAz6In
	LwG8k01mqH4gdB5YaJaTBcuImqrBa81s81yvbWZMMLoi7ZVUMWnnBvu0mP0cXJccUaLPZgq/tliWU
	1q/+OUVes4wRqiskJz8hQ6cHvWBdE7kXZjMMqZ8/Sk0AyreixqINEzLD5RfoG1yJDi9FpTGM03Kst
	JKKm0KX+69IUH6RY15HnI70T7ZrncvIdynAtVH5zX6nSN0I1F8DF2Fus6veEjz+veOWfm8uKnqE5U
	goBOkFdXytJscH8romVsBu/83ghKMHMcxoz6bCVYs5qafA8tAahUz788siWHbTTgdb2oxQerpgpNZ
	WlyMoKvek+u/Y97QZSbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idaho-0005ql-Vg; Sat, 07 Dec 2019 14:05:09 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idagv-0005VE-9C
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 14:04:14 +0000
Received: by mail-lf1-x131.google.com with SMTP id m30so7395126lfp.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Dec 2019 06:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HUlydJOlaT/PhNEVlpGOCt/TfmG+pfQRhAJQZCKDFXk=;
 b=K7SajM31TDl3XcjjvV2yz72SiyrPmPkAeK6pr6ZtYKcbttQNREztcCZu3E69uFymXv
 IQY6IBXG/Dg+n1RMHdcBdl2rK30tpL6ycvas7yTUQT1Q83tMZfkjtPRvlQoK9UUnIKB5
 dcyCxPKoBFa4BCocRLsgPQqRiLFM3ezoEkZxiER2IzG7LMQ24wmoQaJiGBW4JAJkH30+
 J4LQkC14pGrCB2sDCk+dXKSSEmuzVf1kBX1yLEREmdmz0RaUvPTsbfMMr6+e5FoyiuY+
 k/EFXsnXA2Nxfd3RaOLvWXKGyYrPmBrBsizPjH94ndXyXvDdmDAxezDlaV7GWa8VaP/f
 yysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HUlydJOlaT/PhNEVlpGOCt/TfmG+pfQRhAJQZCKDFXk=;
 b=mI9kRP0hiphDGPRdVsCMDquGtS3Mtv0SJ3/CCrLMiYLQQNiKN5z1NrM3H0zVCJeSxx
 6Z/0ySiOWswIMz/JJ8rFlgFzeIivb6yfS9o/zcPeKDabMkPiAmIGWUNSK2soSOUGIoAR
 q4BY6CdtxA/sX9UQ1+C9zIJS3RnTkrZQaIr3L9Ua/0pic8Be/A2LIMlE2i2A1knso+X1
 1kx7A0OPzEra5sazx1C4RXLr/h1qAuAYAALdqOMZzVEWQeja968yZqBXf6jE8MHq55lf
 4ixEB/SzLIMvcfQK5lA5R68yr4Na0FaZvgW0zTTlfiOAq1cNo/KT8vgpwBYRZpH5W1Zj
 91EQ==
X-Gm-Message-State: APjAAAWYwcxL8YWbyyOVF3qutd53o6uYIIFn89/u8uounrRsn22c3VCW
 FPA70dU+Pi8C3VjYj7AbxNBzOwE4
X-Google-Smtp-Source: APXvYqz8P5U9Pf1XbP9bDHtQzLPoNsOLM070TKdYXMgjP8J2p70v10lpfSNrYBUIStP0xz/HGj/nOg==
X-Received: by 2002:a19:760a:: with SMTP id c10mr10192525lff.16.1575727450106; 
 Sat, 07 Dec 2019 06:04:10 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id g14sm8145572ljj.37.2019.12.07.06.04.08
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:09 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xB7E46X4026050
 for <openwrt-devel@lists.openwrt.org>; Sat, 7 Dec 2019 17:04:06 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xB7E46Jl026049
 for openwrt-devel@lists.openwrt.org; Sat, 7 Dec 2019 17:04:06 +0300
Date: Sat, 7 Dec 2019 17:04:06 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191207140405.GE11070@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191109135320.25020-1-fercerpav@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191109135320.25020-1-fercerpav@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060413_335017_0AE5A2D5 
X-CRM114-Status: UNSURE (   5.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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

Hello dear maintainer,

You changed the status of the patch to "Changes requested" but you
haven't expressed your opinion on the topics raised during the
discussion. Please do so that I can make the changes to your liking.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
