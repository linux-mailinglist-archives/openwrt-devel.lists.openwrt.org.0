Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2408B1B1E2C
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 07:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9iVaFPpTV9ef7uDi3MZYb7JFdXspRfRfbUFPH7haNpg=; b=m7m
	RaOp2PhJdChsPielV10bsSOkSzn3273IirVciC57gbwlFKl5aJqURMqVxPqTzpQ0cVKaNa7UQH9kH
	pgFHk/yORVWFPnWGKD/GB8zk2ybhXnyAnb8N1D41c51Tz+YFelQz61VPKFV2SjV9B67fVK9B3JXDm
	guvP0ybrM0zwvKyWIZ44T1Rfs7LGpJ+oCygaRoUYpAZBkej59O1f4BH36vNfGp5H8t/auMaUe39FA
	MdD3R7XrdjOHBp4ilWHBDaxnPpLBooy97ZjIB7l6oq5n7uxod/TW/jEJ0QiLtGwbCe2z5rCa791lt
	SaFHDLb71R1FGmKN+kh8aIXt+Eds2VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQlLu-0005y4-US; Tue, 21 Apr 2020 05:21:46 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQlLk-0005wH-66
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 05:21:37 +0000
Received: by mail-wm1-x332.google.com with SMTP id h2so2061501wmb.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr 2020 22:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=p1pSEnzSZukxHkD2tQ+DG4+GsYL97Sd7gKjtLE5KB4A=;
 b=va+vReJPuNHG3p46Z/ItEbNcn6MRZy2mS3wm0jIUHCwBp0Xhm69cQKAqvIUt6HqSdz
 T8Z5klekMhRn8aF/D9ZGJqAMtm6afIlc+F+SJMMj0PaJUoQPmKjIvJsVtY+wLCZcgbiN
 8gRg/Uqf5FsHrURrfRlOkXFOqF30MeWMAlVzj0dVlzfnO3sNfsJiFEJS3/vvF2tDsTbm
 RmCRPjFarkW3ks11tgFqwFqofshexZWyiEcWEbdfvcDHJSKm6ADCfcvWcwgZwSHMRsUG
 dPFjnpk/O3bUQxj/1X8XKKZSY/Vahy3FL0cQDHpkuv1WWtdUEot1Zdu34rzN7Lmhp7hx
 wltQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=p1pSEnzSZukxHkD2tQ+DG4+GsYL97Sd7gKjtLE5KB4A=;
 b=fsFZzvuElB+ZJyk0l5hhv6r4me9H2cR5XrHYDYOFjqZGRCAKRMWiRzS4iNh+0ua/CI
 B/y8VNcl+VZyay4dSVkyP3ha9h+Gh2B5Bb5GfKWiqVjjwP7BonaFzJA4IM7+S9c5vhKa
 OoundJrrkR7IjJe7H876Y1KPtBWgMXyHlyNvKR8OmlDD+JpugRjxJc8eGjZQZ09s1KF/
 voWvPdbisFO7FMrWqfSeUvQg1lypFnQ+RP8Hk1Vtpx0LkLFQZRp9Jx+HHcpn4BdFptHg
 ZDRx6nobMOMBtBvz1jNcLWdf/u9QE5pMIk0vfeNHtD9/cp7KPziqiY99PQ0e7lsUUmzJ
 JEXg==
X-Gm-Message-State: AGi0PuZJdY4ryxtW1VcVPT3emZciDQkuUEeN0AcsryPqoBLP6qhFVv8b
 BY1iIWFZ2t8qn465E2MDKvP+8r3zpaxsxpBV5S1yHXHj
X-Google-Smtp-Source: APiQypIlDqyyasBGz1PSgrFRZ7TLyBQxb/8uuZuCMaXqfS+6INb0KsPk1+SMJNvM4yZNLAr5Aa/CqN8Z/NAznV70vXw=
X-Received: by 2002:a1c:1fcf:: with SMTP id f198mr3008249wmf.16.1587446492817; 
 Mon, 20 Apr 2020 22:21:32 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Tue, 21 Apr 2020 07:20:34 +0200
Message-ID: <CAJN1KkxavQr9d1WC=1aSPcyT2r4pMak0W9YcmD73oymSpzYCCQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_222136_249657_2604076A 
X-CRM114-Status: UNSURE (   4.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] kirkwood: Looking for github PR device support
 reviewer
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

sometime ago I sent github PR[1] with support for Check Point L-50.

Could someone take a look at this and review it?

[1] https://github.com/openwrt/openwrt/pull/2719

Regards,
Pawel Dembicki

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
