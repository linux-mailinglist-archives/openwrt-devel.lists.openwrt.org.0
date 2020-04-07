Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AAF1A16C1
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 22:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DKPafhQdV6wjHBm26kxgsIFfkDjFe/KPxK13Th6oMWw=; b=eQ5
	r+wF1HeEgKnwfvvQTBEcOveNWvMoBqcu7cu/LMtMZJXr/5//bNrds99AGKaGvee4el0CpYYbyhutx
	75xvw8L0TnwQlOtjY/80OrJxEULVluLTg4Ln1zNwleTgXi2yr3XjsBhyijpscKaag+fUYYqxonoNl
	NsFO3gG2PT33/tpp4SMN8GHNIDmcMxZPQKTCU1fZGwUFrIi0u4KQYxXb8+UGOulH3toC8t/yXmel1
	ldx7peWrKd9Pg36EE+C2ha4xOoI26VKysQi4Ex12qwDx/f8znpM+ApHH7MnqzzcEZE7EB85AQaQ5/
	AWTwCwsySrLlpZ3YqE+vnJIyMK+FtUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLumn-0003MJ-Im; Tue, 07 Apr 2020 20:25:29 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLumL-0000dt-HL
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 20:25:03 +0000
Received: by mail-wr1-x433.google.com with SMTP id p10so5354037wrt.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 13:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Cbk2x3CrjyjNH2IKMsBXmh7UGhmnJUFf45mdWPTeLTY=;
 b=GdsI2WgTE9yEqZkzfBUiU0pm9yKUYx2ledevT9Wx9KJOAB0iz0om2MGMMgrbEmTF4H
 nwxYvagvflgBcr1pUuLKP4MBrQreyN7fDNFeIEjyWzP+ZHqY/JUNmhvfjo0uNxCw1bAd
 YiLbYzS/up8CtWMpL444vbj+uD0z8VU9mBHo3lhtCJotk4M2p5PCwVQIuYs3/rIs20MV
 CdpAM6mCDKZ3XO3isoGq6jKo2MgIxKyiKj7tUFOfoC0DRqQmNsJcEtGS/+9tOG64yD7w
 kT6+CQetRxPvxe7Dl/d3QFv7FtuewEllv5xTnl6XIKXM0m463L9bh/DPh/jUqKiPiLR0
 zliA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Cbk2x3CrjyjNH2IKMsBXmh7UGhmnJUFf45mdWPTeLTY=;
 b=X92s3fmWXoo5txbMHaVjtBg2Jlj1q+YyfQ+iAyemumBaCm2yo05HNF3RN8R5iy7z56
 ozJ7cXMsgF9cEwdiSpq02BDIZE+UMh0eM7I/Ycmn+fSW7J8a+43fiLjlN67MaIFzggD+
 LlJtBLcrllO6EIIMrn5MLgwNQyXssJouUNd3E+TTtWgLob53mHZR9XbDIzMRtcfT/P8F
 /6dY7t1xEz3tKyjsVkhJZdfxjJLVKjTjM6FuJm8RNybyRn2MiilcMwX4ROsf+t2ckGqr
 k3P5z4WqgWAoMl3LGczgGzsU5xJObAw84msPqPrjbEbnC/iaEs7SW4Aub9j26Qf6DgTx
 0ZlQ==
X-Gm-Message-State: AGi0PuZqpT5G5tgn1vdyOwsLs/bN3aQqOsCQji1coDDjE2Jpoz9DOMVW
 H4vHrNX7eeLzp7h86HYqYgH+m20HipxnLiGcHyerG8R5
X-Google-Smtp-Source: APiQypJwQ1kGoT6XkHhOPiJAR/rvrV1LYyPpX1lEGI5J8cs/YP+xZj46/szRsaw7KTwYpGyN8ShavQDERBI1KKZXyEw=
X-Received: by 2002:a5d:6548:: with SMTP id z8mr4486707wrv.200.1586291099377; 
 Tue, 07 Apr 2020 13:24:59 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Tue, 7 Apr 2020 22:24:48 +0200
Message-ID: <CAJN1Kkz=m+6s-osrxjBkwZ7QN7PvDb8LD80f9UNTFb91CmObVw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_132501_735033_4406246D 
X-CRM114-Status: UNSURE (   4.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] ramips: mt7620: Looking for github PR mt7620 driver
 patch reviewer
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

Hi everybody,

sometime ago I sent github PR[1] with support for D-Link DWR-960.

I prepared patch for mt7620, which add rgmii delays setting
possibility. Could someone take a look at this and review it?

[1] https://github.com/openwrt/openwrt/pull/2857

Regards,
Pawel Dembicki

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
