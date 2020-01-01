Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C620E12E0F6
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 00:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAh37rxB+n2rypv2chvMFo31QJNGudPxVBtersffFE0=; b=Xf8qj7t3AWMqtk
	f6NUsvHGA+X4rof+NgQAuBVKIa1uHYyvP32NF8gFgYTyBYg/1pd6fpQ2So6oZmieDjlYKQpI8lCmI
	IqemwWIUhooi4VP8iYtRh9jNB/+Xr1K0NH0GEgXwEA9R4Isu/RsZFdebqA9EbAEwB8DWzhxPXfnyB
	Nqgzbl6RCwA3GjaO7WgEfqjfLW+byIJZTlQzrS97qkuo+SRRtaPgtTbU2JuR+pY50S5xxhIi4zvzP
	EyJS/lRobegsqpLARF7UcVXuhJOiAilvlvbJNHz31JxtG50xsQoZie50d5fT1n5EwOPpXvdk3YsA4
	rnmvcPkTuJuBy8uJJEeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imn3u-0000cn-Bu; Wed, 01 Jan 2020 23:05:58 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imn3m-0000cV-5j
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 23:05:51 +0000
Received: by mail-oi1-x229.google.com with SMTP id v140so12595530oie.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Jan 2020 15:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P3LREEpZOUMitpthLBDabJ+SmNRhzei8ah/J12+ETsk=;
 b=WsjYLwIfk8IJguLjgPZ54VtXUciRJPaFUHbWPI9yQyt5j4HrvAFtsIp7SSlirhfBdf
 lpJbZqLXZ9OJo9oapzd2rl5jt3UsaSiQcGQ3f7kqSppx2QdJ8kFTM4SUTalTJhZUXiSU
 bekFXzhN0HVwMtqExIjBEc++H/Mz6FQFFIO8Dj5ZKEkO77F9AKF2j6G9bl4pQedtJvnp
 XraYloQ5yoJm7TxUWgkV0ovX/7Jv+7LMxao3SPhborp3dP3z+Lkj77D+/FGUiiHLD0uf
 Tezc2pYPhd1uCrx9lf1Z9qUu9DhG8m+LA7ZBYFQn2nRufF2a+ms1aMtd/T0xi8EWJJQ/
 S5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P3LREEpZOUMitpthLBDabJ+SmNRhzei8ah/J12+ETsk=;
 b=UvWM+7Knhusr3s9L0LWAOjf5N63D/ta+3jG6Y4hfDyIRym6yMBavtGr7tWu9FZy5Zg
 Cav2JiDA/XXgLEBg/nFM/9AdNA8ewTO2TebJ26BM7RL5Irh1pheG2avjycn6H5aeSAfy
 DSsnOq6/L+g/l1iH2+AttQq3ieWNHyAU8UceNvf+xw1kLhcnY1fgp8/Lf2vh2KFJltc0
 j9V5+pRFjl2iTrsDQzHg6XHrMpbe+azIJkLEUqSM3Wsx9YzOf4ReMkLErBOyhrnDhuP2
 QuyHKWdOh+AKU0gVU8VPg22WbdvhFB4TMjHutFXDCjp2f/lZVWi0MpBjGANTdVJMM1oS
 auAQ==
X-Gm-Message-State: APjAAAX1Unn/zMTEciKrdab7DN0qZh8NTLK1IdUrSbmjV5jbNhUmTGrL
 c49c4ugtxXZHv7kJ2Ddj8LUwWBgkBCtW5Lwyoj1bHGI5
X-Google-Smtp-Source: APXvYqxXO5CHSIIw5hnqt2yNfaLEBl1bip4GK8ew74NeN0rvhVSpQ0etHkgVBVRdS3bwonz8fyRcwiYWBD/vqAuG33I=
X-Received: by 2002:aca:f2c5:: with SMTP id q188mr1954895oih.113.1577919948967; 
 Wed, 01 Jan 2020 15:05:48 -0800 (PST)
MIME-Version: 1.0
References: <20191231021626.47613-1-rosenp@gmail.com>
 <e380ed71-f4eb-6af2-4a83-750d6d84e601@wwsnet.net>
In-Reply-To: <e380ed71-f4eb-6af2-4a83-750d6d84e601@wwsnet.net>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 1 Jan 2020 15:05:37 -0800
Message-ID: <CAKxU2N9XHZpKUCbYSPu-2qi3z+XYKKMiT536zO0ZusaEkogAZQ@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_150550_215841_AC715703 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: flash.sh]
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] scripts/flashing: Switch from echo
 -en to printf
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

On Wed, Jan 1, 2020 at 8:07 AM Jo-Philipp Wich <jo@mein.io> wrote:
>
> Hi.
>
> $ patch -p1 < 1216552.patch
> patching file scripts/flashing/flash.sh
> Hunk #1 FAILED at 51.
> 1 out of 1 hunk FAILED -- saving rejects to file
> scripts/flashing/flash.sh.rej
will resend.
>
> ~ Jo
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
