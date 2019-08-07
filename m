Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A0385360
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 21:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XO5nEkaY56Tqy+ZlyXr3wLQMRhDN/d7/uvJhkc1CHZo=; b=AbnQ4CFLkwhTqd
	WG/FvbDcbuj4kyHLeZS5A41lamZVA5bSant/8bkyaJaeO/WZMV/MY/m27aYRgPjncKmPpDZxfQz73
	J5mOAK3WGB2gCN40beXQ5CTm+sY1MVLs6CoIMw2t0MW3v+Z/wzZWa4Z4mmpZe2etwUWWdyFIvYe1w
	7M+FbNMWDwI1umeQdX2h9xG9j7a5mccV6GLhfCjD9fE1CdrIfgSyArwnpwN/RHKNHiIRCAn3H3J9K
	lrYWD4+n7HfZ+/rgdfpRrGBUVV+ZVC87s3at6SeAPNCoQNXyX96j3diu/2mrZ7DzM3Kzq/0GQ/0n/
	rwFQHufcQkiqqfaQB7gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRBx-0006tG-LN; Wed, 07 Aug 2019 19:01:45 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRBn-0006sn-05
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 19:01:36 +0000
Received: by mail-ot1-x330.google.com with SMTP id q20so108454138otl.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 12:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=H3gY4Fs0FcB8fCg3zQJIn5SQA/Jhn8pIli0EP0KhMhY=;
 b=VniBkOepJf1Q6RgzQTvRkL6PwOdzpTb1OcUSB/xDvPtfxGhyNLYmOLfv4+mNbbs71/
 u4qpI8lKjOEyHCQkf4mK+JNZEACu5hdQ/2q5Ms+R/nWvwRUG83LvbtJVpVr9o0agodpS
 ixiznpMTK44VIkyktyE4eNpchf7pb9kYqLelCSCsmnDdh8hTG2vUSdcHv81YNie2d22p
 A4deINXWXFhixLC0R1xAFXYxx9aYvZz7As5nDbfkvVCTLFQvKWf2INmosd/s4+hPAagQ
 6ULlXGM22I2JsRRoOjZ2y8BiqRoZyQ8AHiSjXFcfaZp4gVPMIWGz+jpTZGJWWl0PtYcx
 mjWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=H3gY4Fs0FcB8fCg3zQJIn5SQA/Jhn8pIli0EP0KhMhY=;
 b=LB0rMO0KG22+gzbrrfdwHGg70R7Eb6G4U17bPgC1OGS4MW4NtcAXagJgZaEQzXXOUr
 Poeq2Nv25JmzzuihwLgjqR1G3BPbUVWDhXCII6o2YNDha1c/Pz6eFGQs6rnUkntQiFTN
 VC1Slt5wx+7APYiJuZPKox0UMpApN2Rq8/+RT1PJTwcxe50ZITzW43Yq3T8iSg+da9iG
 fwW6QOt+AJ6WUFfI5FY9dpnMZyK5OzmRBj5FJTyiqWbGZ8gBkRz8Mt74hraChYL2xKpw
 wtRSY6JeB6QEedOs6MSsuZZs5bcH0FH6yHa0ZrQNL2tWoFyrknMvbkuVRKbaKlrNPqu3
 LYdQ==
X-Gm-Message-State: APjAAAXIN0ibYl9Quva+zuxEezcYxyAXeVRkSjIDxt/L7TlECfdSdhf2
 TD9ZzG4CeJ0Q5bykydGliAFeEMtrtuj+UEGQeXA=
X-Google-Smtp-Source: APXvYqxOoRusFlIwMJHEJWyS7Iwrbl9BijKOoe6R1IvBmseoeCgWdPvzMGdp9PfxueILlMYCkMtqgJLlGYHKELr3iEE=
X-Received: by 2002:a5d:9dc7:: with SMTP id 7mr10924173ioo.237.1565204494140; 
 Wed, 07 Aug 2019 12:01:34 -0700 (PDT)
MIME-Version: 1.0
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
 <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
 <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
 <CANoib0GUUxSHCp5cRkjyiQykuRookSNdiVyJr4Bf0yE62fYSpw@mail.gmail.com>
 <02a201d54d51$4a49add0$dedd0970$@adrianschmutzler.de>
In-Reply-To: <02a201d54d51$4a49add0$dedd0970$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Wed, 7 Aug 2019 22:01:23 +0300
Message-ID: <CANoib0Hk6buOR9tJ5F+3EXd2c-MCGiE0X=M+Yg7_R_+fP5zWdw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_120135_039152_920756A3 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:330 listed in]
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

> If the CH stands for China, as I've also read when googleing, I would prefer having CN here. This will then very much depend upon whether the CH is used officially somewhere or whether it's just an invention of previous OpenWrt versions ... (Where in the latter case I'd actually change to CN as we did for other devices ...).

CH is used in BOARD_ID.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
