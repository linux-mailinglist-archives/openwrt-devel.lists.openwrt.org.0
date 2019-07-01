Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E20D45BD76
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 15:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/laa6Bt+et50CG1mvyVakUrG6YE3oI3H6Sg8jN0g1CA=; b=jkPerUFxARvUp8NBc+SWe50Mf
	/ABagdK8l+O5hQ6nofzD0r0c/PSN5xIqE5G0M/lUfnT3XvNG0Yuiz4TpHIu8kyW5v7Nhj/sY1lfhT
	qYGw7ZAkUhpqKDec9yKcEw85McSwd7HNyj+G387lM9AIotOHdSJQSxcN3YjHEFPb5CRAmXVYyswRD
	mmCo1rrg7qtSe3IsgCSPO+C7wXYNIWtoR0lWgZZVGbsIRt8XeWEPEapOZ6tignenf+oSXoqgliG2x
	kjnpnYsz47PETukeBvjGp9cvxVqSAMk++uCpHe9vHBQpXms0FwEgnmOKQMOVpoGacpruhGqA+VfdQ
	/B0JE5riQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhwpx-0003GA-Vc; Mon, 01 Jul 2019 13:59:17 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhwpq-0003Fb-9t
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 13:59:11 +0000
Received: from p5dcfb199.dip0.t-ipconnect.de ([93.207.177.153]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hhwpo-0006Jq-Ng; Mon, 01 Jul 2019 15:59:08 +0200
To: Kristupas Savickas <kristupas.savickas@pm.me>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
References: <mailman.2650.1560800749.19300.openwrt-devel@lists.openwrt.org>
From: John Crispin <john@phrozen.org>
Message-ID: <cb17d04f-5506-6cf2-5b1d-da7dc8a74b96@phrozen.org>
Date: Mon, 1 Jul 2019 15:59:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <mailman.2650.1560800749.19300.openwrt-devel@lists.openwrt.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_065910_501272_1BE2EB9D 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] libubox: add macros for remaining
 logging severities
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

patch is malformed and fails to apply

 =A0=A0=A0 John

--2019-07-01 15:54:52-- http://patchwork.ozlabs.org/patch/1117474/mbox/
Resolving patchwork.ozlabs.org (patchwork.ozlabs.org)... 203.11.71.1, =

2401:3900:2:1::2
Connecting to patchwork.ozlabs.org =

(patchwork.ozlabs.org)|203.11.71.1|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 5055 (4.9K) [text/plain]
Saving to: =911117474.patch=92

1117474.patch =

100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>] =

4.94K=A0 --.-KB/s=A0=A0=A0 in 0.001s

2019-07-01 15:54:53 (4.31 MB/s) - =911117474.patch=92 saved [5055/5055]

Patch is empty.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
