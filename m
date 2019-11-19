Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C421F102981
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 17:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+LQRLP4qi3C9zzwDaaQMdSF5sywQOju8ISrEqQZaxQ=; b=gulaVuf0mHcU+T
	2peKreVZwYIOFOiEuLCzqNft1GwjzPSxKvgwpGiEzNIhNvLOuhjLBhllMytBzBozGQtmxHREZ8jTQ
	SBOkIQpvGFAzeH19dQVpyW84oEk5CFXRcruM6PyRxjxRWLz3UyCFtilB+AFoHl3WdhfTvobFFmq9k
	UDbD4z9KxFi+kzN2way4JMy5JGAWmvl9IIMp43CxbePxRD2h2rfkznqTnSebIRQIIJSdmCgRH10DM
	chwYTYR9qRcl4fYcCxInFpGHouvVofueJtriK+zPKkv6YNq8HSPr1sI5h4WDODm3Y6QgGwZM47Abj
	G9511s8q+EseTg54OvFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6VP-0001jT-JU; Tue, 19 Nov 2019 16:37:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6VF-0001j2-D7
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 16:37:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id c22so4491063wmd.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 Nov 2019 08:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gcc8r+i1/0WRPk9Zu+VQdHpB61EX7Hko0PL48OphULE=;
 b=j/dqlpYeJ0ivlTDIZj1RoabVgJeK+VOzim107Hqt/z7Tvq+91P71zMCGtoWrvCCR3r
 A5VYSgLo7NifBkseKShdRRT2JdKGLlFx14uCqV/4DqSK2S4Zwlyt6hBLH10+lhoj8zFs
 xFDyDVidrbeCNDzwkL2EjyQUu7JmNprpWm5blm9ExL26sxzbDzelSR3Np2VDF4gCsM3D
 uvKOcsMtj2noMfVZA3ogXrlAO7FvF875Q4a7X6lGwYyenLxqejb9Mj2egnwW3iEu2BVp
 IFgZbePIV8edOLQderZWDXL7PGtJkVHu2OC49Gxg6sS+/boMmayCRJbFK7jEpx6kqxSa
 W6+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gcc8r+i1/0WRPk9Zu+VQdHpB61EX7Hko0PL48OphULE=;
 b=Ip3NJ6jH/qFqs5MKAX0DufPvA7JB8hYCSj6jUGVh7LdwaqJLj37NQknmtO3VO7ziwS
 6Cpv3dFVCJt+/cbnnRpFsIb+/1+4Mywb38ScRsgtmApODXgAFnK7bDwncIqqls1NngqS
 VF83WL7x5OqCW6Z+CrEhG8eEgHc1CfpMxKG7EJ/PYIIFolYONyRChmwvZoqWAQS2mEjO
 KSVX5SyNiw0VChg+cj21gvguPzPnuSR+eU252qH68MNjSBWYvFEF0/hUTnb1cz/UNHD7
 1Sw3vf/hq8s26ncpW9Si0scpEI8KdMfEAStYMDPAHT8RutC60/ZOgvl38Pg2M2uW/gO2
 GBiw==
X-Gm-Message-State: APjAAAXQQQZgV0I5vs8lhbtRPsjExiRxaYZqlr2t3C/ANSHTOhEQ7I2+
 UHMEvomahMf6hJMsmy/Bqq4YREPt+Wop0kNR/avdhg==
X-Google-Smtp-Source: APXvYqxrNWemVRcDenYtS+cMA80guLwsIP7hW/Lz/HuXiYi3bcab4Yrux775duhtYS8AhkvArjbWk/fLjtOuQNECZ04=
X-Received: by 2002:a05:600c:22cb:: with SMTP id
 11mr6813161wmg.117.1574181438779; 
 Tue, 19 Nov 2019 08:37:18 -0800 (PST)
MIME-Version: 1.0
References: <20191112140214.59f2971f@kosmio.komorska>
 <04615660-e813-7bc1-1e75-a51c289fd518@david-bauer.net>
 <20191112192234.721c6a6e@kosmio.komorska>
 <20191119161737.2fa01dc3@kosmio.komorska>
 <CAOiHx=kDgJjSbRCqrm9A6=GjR9HYkgZ4gYdvemV2-3cbXHemFA@mail.gmail.com>
 <20191119173322.512c6669@kosmio.komorska>
In-Reply-To: <20191119173322.512c6669@kosmio.komorska>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Tue, 19 Nov 2019 17:36:58 +0100
Message-ID: <CAOiHx=krODnS-PizVk3Y5arY69JSzVT9A8bTV28K_cUJs_pJ=A@mail.gmail.com>
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_083721_469728_8260DC84 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, 19 Nov 2019 at 17:33, Michal Cieslakiewicz
<michal.cieslakiewicz@wp.pl> wrote:
>
> Hello,
>
> >
> > Have you checked that flashing a factory.bin image through tftp still
> > works?
> >
>
> Yes, it works. On this router the easiest way to flash memory via tftp
> is to enter uboot and execute 'fw_recovery' command, then factory.img
> file can be uploaded via tftp client.  I hope this answers your
> question.

That was my question, if the "new" OpenWrt sysupgrade.bin still works
in the initial flash.

Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
