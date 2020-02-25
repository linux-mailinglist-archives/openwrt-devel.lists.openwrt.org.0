Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D2816C19A
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 14:02:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wE4vYLXeVaWOw9CW+36gwJrSgsEq3zmkLG9AQmxrmtY=; b=e0m
	SCfq7ErlndkbHvO/mkQ3tVIDV+qO4wohN3KTdOjAeruwDVTukkz+U47A+NOWXssHybtB2BzddrEI2
	JN5Th5dXGanrhf/dJacevX6Sgmx5BsuvdiDS+smqUdmNmaeMOrC4l1H7THnD6k1p182sjTZJkctIM
	UtvwumuJAMqm0ih9ZDRUsHa+S7omJRkC9H9Lw4do9G80seLH9SeEKwEHL/BIC4ahZtv52pQ+bTM7/
	FtMy0MVJ4AIhIQSEoq4yItquxPTW5bGhjcb9h8RXTkl1wFCiiXj5MVhpA1rt7TbGSzdIb4mo0vgVo
	VpZu6443ks1p7I4uzGbcm+gHBemg8aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ZrM-0002s2-UF; Tue, 25 Feb 2020 13:02:48 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ZrG-0002rR-Pk
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 13:02:44 +0000
Received: by mail-qv1-xf32.google.com with SMTP id dc14so5646257qvb.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Feb 2020 05:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Xv1sFBS2c+B4/3yv5bo/x/kNhaTI6gp3Wei9o3r66JY=;
 b=URToylD73CjZwK82I8ZJTkCq7NPlQEEFUKaQqS5mA993H+D5d4STMjW/IT4C+A0LCM
 7aHW4+JH8M5iUf4SgBp+h5PCzRtE5cYLCeyGMK5lnYgx8LYUaS5pC7vp1+Y53DVFd++n
 Q+zvX8HVLy4Vx4gIX7oAPZWXV7H01oABuPMhGp+onDVqN0BSH82jL8gzlLbOIu5XrGDP
 swY5F7KnjID0aZp48hbMb/s96daoludiYkXeI1dVfbE0N73MS1dbRADxONOV8rM2MovI
 C9+7VPxDu9sLwcMvV8zB71ADEDtXVkGEue5tdJ2fq2CxLApgNvA0n6MqpAb47gMCSDaU
 CaNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Xv1sFBS2c+B4/3yv5bo/x/kNhaTI6gp3Wei9o3r66JY=;
 b=P/Z22PQ3i8W3g1CuXm+9yanLCEIFzMVry4cGtmbqkHnyidRxn9yyD7YbdHy9nZJCYy
 WBOa0c1Yodpe0kVmgvoYxOKMLMuUsfq3tYmy8s0Gp6+jgmFFNYZxu9usrPLUf+r+bXTi
 jinZXgNr6bxYBaOaOpFUs0DjnPN/LlDkPb6u32zkTUZHKw9VK9XWlzCxjlkl5UKhfaI0
 hc5qBrJiBTvn2jFNeK1ZqqneqAjlAW+R07U3UQQK5H5tkBGYKlP8Ym5IfyhpTTtwGYXR
 lzaeT8sP91bxw47Fs+HbW/eV1/JrW1OFQ6sPgICNFdX1ONksEGsUBtW1gwMqiUuMH8HI
 OnFg==
X-Gm-Message-State: APjAAAU7dCbepwZR7itpWFFYNIh5JElpHfdT9GaD4Qp0WnMON8gPpi2d
 XTugvJhyiI6056hoOwe0kApu5qYKLBecgoHGodqyVZVm
X-Google-Smtp-Source: APXvYqxcnAnTR73nmeuiYEiMHX+I9tQj1fZ76RsrSWQXN5Wh0OlaxqxlOBQ9TQqyo6rfaRceS8330o37ohMh6A52Gcs=
X-Received: by 2002:a0c:e014:: with SMTP id j20mr52268801qvk.165.1582635760258; 
 Tue, 25 Feb 2020 05:02:40 -0800 (PST)
MIME-Version: 1.0
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Tue, 25 Feb 2020 10:02:30 -0300
Message-ID: <CAPxccB1fkreXtLxb06yPdRjhk0ruvvV+Yf+O+SHvMeESuNFqWA@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_050242_853347_92F48854 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] ipq40xx: QCE/crypto fixes & enhancements (PR #2518)
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

Hi

I have finished working on
https://github.com/openwrt/openwrt/pull/2518, fixing some bugs with
the crypto engine, and adding asm modules to crypto algorithms, since
the engine is not very fast when using "network-sized" (<1500-bytes)
requests.

Since it's been started a while back, it appears on page 4 of the PR
list, so I'm sending a note here so that people can review it.  Can
someone please remove the "RFC" and "work in progress" labels, since I
can't do that myself.

Cheers,

Eneas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
