Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDD95BCBB
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 15:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5naRLB0PrPBoL561fsFMZPEbONqXQc0g3ZMEL/aL754=; b=O5Z
	nOOSylYJvO3D13t7sUwsQn8rS1qH5Qzu1WXmTXZgkWwFVSEDKTNelXhW9Wogx9uK+KxnUdiRQgpdb
	Dkv8mVjW0CIaHD0CvafH/vfYyMhZBk4a+eayzWprMxYGk/+ZWxdJdhtwucUETWnOXvoOdD8KJhM1q
	0ZoNM8IFkf8y8WOIxbW6Z65+WrVc50gkxF+kMn4DmIusRlJ64DFRtvGZ00SVxkOpgu7xkhyTsJkfz
	uTGKo+q8XrdA/XznHaM68uSYiguZBJcMgJvEdh1VVT+L4UXrkTzFnf2vyq0fHJyjZBLbn4XPySJHO
	alXkOCx+7epEj7P404ltF1yeofVJ3Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhwE4-0004sG-NE; Mon, 01 Jul 2019 13:20:08 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhwDq-0004rH-GW
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 13:19:55 +0000
Received: by mail-io1-xd34.google.com with SMTP id w25so28684200ioc.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 01 Jul 2019 06:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=uKpb3hB1Jk0+oMrldNWnfrRJI0WSEylfQTGf3QwDXbI=;
 b=jMAbKVllDZJwK6tMii0Cm33dRJ0peB0D98/y2MyJThpF2vUMSlzQcmn7/hIAcneZX8
 QdjRgknFRs2htRF9QQiGy8flcUoTMC3WtVAF1+AE4RgfqMi2veZtChl5kHFx+zzLJpA4
 OmeWWjA2eQV0nHfQBYnm6zVPxQ4oo1XzRp0KFOiba5smbZwtiLheS/w87L8hbRvGU36G
 ZZ+YX6fo5f7p9r7nvEcXll8CjfJKSpM0MfCpjQWxryxw/C3jgynyBdkvcc47f0R+d948
 TsTRFt6n8bZIpxZTHvm4Yz/PF2pHdMRl4muOruLdik4EHM5LS0rPM/FBntTTTox4wAcY
 RWrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=uKpb3hB1Jk0+oMrldNWnfrRJI0WSEylfQTGf3QwDXbI=;
 b=oN8obU8HyMaEQOG3nhBGRIk7kDbIIUtvcQvrmxUK1m7ppHX3roMtS50CKwdZlsAZdv
 v2YBJP5+Wuo/DKaoYR0hNVFBTz8zbsycyMazQbrOTHhS2a5mUtR+2Xe+E/mGsZue4v+6
 wDNIDGB9Bmr1XCyJG2p93NIlhJwF0Y7fNrUsrYepwVMnHbw2yqxrRebCdjUnlES8p4xP
 hBpa00iAoVnlt8xiCQN9jqlmAZxj5XiiNnY1R3CL0CCEa3mxWG3iuw8QGT1D7bra376M
 wRtAR/b/ThsUUAoi7XhY90hQXOmQXg7fqtjd2njYg5laTuZz9K8ubzBs4G4uMWtKpAgC
 IoRw==
X-Gm-Message-State: APjAAAUBBrPYQeo8TvTij8K8rRSjbbAf16uvnMYc5ASxoL9WsDsN23oY
 uK2N4O8VL6ceNoYZrHKhAa8NT1YjILn5qUqxdlpcrvXkxwU=
X-Google-Smtp-Source: APXvYqx+6iQXH2dh+3/lUxAOZRk3dCp9g9fbsHVzzfblntYt9sRdhoHxYReAl4aEZUvUNZwLkNaXfJc1nthNlXs6DI0=
X-Received: by 2002:a5d:8252:: with SMTP id n18mr26850761ioo.230.1561987190884; 
 Mon, 01 Jul 2019 06:19:50 -0700 (PDT)
MIME-Version: 1.0
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Mon, 1 Jul 2019 15:19:34 +0200
Message-ID: <CA+_ehUxJcmEYHSfRR11nHDB9ucMqJZcdFM+HrrHSymzmSVYAmA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_061954_575386_D0727D90 
X-CRM114-Status: UNSURE (   3.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d34 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ansuelsmth[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Patch review
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

Can someone review this series of patch i sent some times ago?

https://patchwork.ozlabs.org/patch/1116584/

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
