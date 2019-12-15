Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA1B11F797
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 13:01:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcef3FeiHzuHDkvWsebXOYp3CxSfZp0wLi+/VAuP5q4=; b=bIUv/xCVpQvJzZ
	Bi5cDNGoX7EYISWTwr95z1dYUzWuE489eh4rD285vBa6QH3fryCd/Y0bI9CC7QQ7iMRzHeAO0sY+S
	5ydo53UBrSe7Yn8bTIRIO9CCp3+lYLmBnF7llknKvhtUqzTNKfYup18fjM+r93fhCjMmr8G9tOPWl
	EcwP845jFIOSYHlHa5FRDktHPXA5BB1t7AoWlyzb/eUp+HqfQrKNcn5H1Nm+yMzbQw+/c+8V2IxNu
	dWZg4sb8LI8rXh5OOy3L0VdUovGTkrCobCf66ky900oYoU9GVmPmexZyl+40AOXlQzLwEF3gpE9T9
	NDKIuJ7pAWmggwwOR/0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igSaX-0003Ho-Lq; Sun, 15 Dec 2019 12:01:29 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igSaR-0003Gy-4i
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 12:01:24 +0000
Received: by mail-lf1-x142.google.com with SMTP id n12so2296856lfe.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Dec 2019 04:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Cw0hfuglwMi++PbEc2WfkfdwuD6aj4vRlFcM7ooaA/Q=;
 b=GvGh8GduoLZqxKkCPmhN8vpS1YmJxHz21IX4gpWj2OCSZbewetZC+X5b9VJHCB0TAi
 w6ir4w2Pnd523D+f7N3xwJIOG+mtPGtkcgvdDPfxL7ERk2gu8cHtYkZBwt2ba8GPB0ME
 jFknCea/rdJ4eiun+iuxyVIkBp+98RIVhdXoCFwPa21+JbS0NZReLFRkaEpw+Wg3zXfq
 F7uxDfBvgWow4MsbI/lCyOl0vjIFu1cLy5GkmhEi2zDv7b+WU4V1/4A7nxObOyhLxmmp
 P2SUdz6FZPCE/bUfKvZIiyaKzp11DwgXornsi9D1n/ncTOVJGHpdI/bmj+K88iXZnWTn
 EKrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Cw0hfuglwMi++PbEc2WfkfdwuD6aj4vRlFcM7ooaA/Q=;
 b=jiDUiXwPR9mSJ3KpSfNkyu5Zu3Zw+HbWLt8TRsVjiVnV4wJ35GoaYCPQGSzpZ+dmd6
 tfo0f9ySCusEfzVCMdj5i60zZmm/WfB5aqGs/tWB3+8OT57WkjUymxDgaHqCrG7wgZ9X
 /9+U4tmKG9w78ObVZCpcGGAOoO8w+pASJxaZE/hY+zXqEl8Ano8bo87k9oH9wuDPhK+s
 AAVQn0ii7YImFTwjHl28VooewjdAClNxWb1VUW2GIa+RtR5DYFgy+X7H/nvEh81bLFmI
 vWIw8BdLruoS9HIan8oqcfdg2zTlBHPqH464mgewzoUGwkUzgL6wpIoJzShjSDZDhc1U
 uACw==
X-Gm-Message-State: APjAAAVWfB3jjOmzMBBOce2OrUe3/sSrC/qzvr/MZ+0swBNfX3fSnHys
 ldQMFw3+NaBX5rrYdXNb30g=
X-Google-Smtp-Source: APXvYqzhuRPGMYMJ201Auu8GTgqgxekLdWSrfYVD20CsZEMUZ1IS+dzTkNxbQry+vOHXOXqE2U97yQ==
X-Received: by 2002:ac2:5a09:: with SMTP id q9mr13876941lfn.71.1576411280623; 
 Sun, 15 Dec 2019 04:01:20 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id n5sm8175531ljh.86.2019.12.15.04.01.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 04:01:19 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBFC1GT5026125; Sun, 15 Dec 2019 15:01:17 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBFC1FnA026124;
 Sun, 15 Dec 2019 15:01:15 +0300
Date: Sun, 15 Dec 2019 15:01:14 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
Message-ID: <20191215120114.GD11070@home.paul.comp>
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <d938b7ab-80b0-c78a-5a84-435243dff86d@candelatech.com>
 <20191211191652.GU11070@home.paul.comp>
 <5675304.dXXkMWVoIb@debian64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5675304.dXXkMWVoIb@debian64>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_040123_188608_05F7C35D 
X-CRM114-Status: UNSURE (   9.07  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Ben Greear <greearb@candelatech.com>,
 openwrt-devel@lists.openwrt.org, Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Thank you for the answer Christian,

On Sun, Dec 15, 2019 at 12:00:48PM +0100, Christian Lamparter wrote:
> I think for this to have any chance of moving forward you'll need to
> pressure your ODMs and if that doesn't work: Go with a different WIFI
> chip vendor that supports low memory devices, or add more RAM.
> From what I can tell, Qualcomm nowadays gets what they want "for free"
> and for the past four-five years, they certainly didn't feel pressured
> to add "low memory" support to ath10k.

FWIW, OpenWrt's ath10k vendor is CT now, not QCA, so it's not much
relevant what do ODMs and (whatever is left from) QCA say, I guess.

It would be kind of weird to force OpenWrt users of certain devices to
downgrade to upstream ath10k (or to abandon hardware that is working
fine for them with previous OpenWrt release) just because Atheros no
longer exist and Qualcomm can't care less about free software
community, don't you think so?

I'll try to find the mailing list posts you're talking about to help
Ben decide if he is still OK with those patches getting used on
low-RAM devices in OpenWrt or not.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
