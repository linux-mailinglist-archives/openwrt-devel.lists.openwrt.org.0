Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6451BEE6C
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Apr 2020 04:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abDZgIXnyzg7qRga3ojJZcjoqvbOO/hWVgDKsEep33k=; b=gOZPfnSQV4xgb/
	UY0EZzkh0g2bEYQ3nzDnNMEP0ayvPagUJerwaRMUBFP+o8ij6uUQM/L1WU4p1UgFw+Vi/oXstZ9X0
	IJcimMczOLt4kgcmpiLjdlE7yepuwYMRsR9HtGNOEUkna2iRlX1REGmoqXuSHXIf3qlbGSBnnyl14
	noMLS67Zd/Bjs0CUMPaubMthezGQOE8OGIwyC8xDlxyXz+39pYtaaysbdSTWOYGixMnRCoo8ppXF1
	MyOqVAWxRkMMS6d7BUpprW1U9HSixbfSc9dxRZ74/ID+N4GbHSpslUHNXW5hqKoT4Aplu1bfwOCJ1
	x70kpopVi9mdSwlRWP1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTzOH-0006oq-OF; Thu, 30 Apr 2020 02:57:33 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTzOC-0006o3-4G
 for openwrt-devel@lists.openwrt.org; Thu, 30 Apr 2020 02:57:29 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03U2vP8R009417
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 20:57:26 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <CAJq09z7Vb_xdz4m9bWq_a7QGZ9-H-xZBKDKxWQW6J=ynQGqr=w@mail.gmail.com>
Date: Wed, 29 Apr 2020 20:57:25 -0600
Message-Id: <CEDDF3DB-9673-4682-8981-7F97416304C2@redfish-solutions.com>
References: <8E30BC1C-83C5-4CB1-881C-344B6CD865D2@redfish-solutions.com>
 <20200429090625.GA22217@meh.true.cz>
 <DAA85EB3-2D0B-4A03-9BE0-865DAAFE76C9@redfish-solutions.com>
 <CAJq09z7Vb_xdz4m9bWq_a7QGZ9-H-xZBKDKxWQW6J=ynQGqr=w@mail.gmail.com>
To: Luiz Angelo Daros de Luca <luizluca@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_195728_255970_2E6AA5D9 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Signing, meta-data,
 etc. on images and losetup mounts...
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
Cc: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIEFwciAyOSwgMjAyMCwgYXQgODoyNyBQTSwgTHVpeiBBbmdlbG8gRGFyb3MgZGUgTHVj
YSA8bHVpemx1Y2FAZ21haWwuY29tPiB3cm90ZToKPiAKPiAKPiAKPiBUaGFua3MuICBXaGVyZSBp
cyB0aGUgYmVnaW5uaW5nIG9mIHRoZSB3aG9sZSBkaXNrIGltYWdlIChhbmQgZW5kKSBpZiBJIHdh
bnQgdG8g4oCcZGTigJ0gaXQgb250byBhbiBTU0Qgb3IgU0Q/Cj4gCj4gTWV0YSBpcyBhdCB0aGUg
ZW5kLiBHdW56aXAgd2lsbCBnaXZlIHlvdSBhIHdhcm5pbmcgYW5kIGlnbm9yZWQgaXQgd2hlbiBl
eHBhbmRlZC4KPiAKPiBGaXJzdCBieXRlIG9mIHRoZSBleHBhbmRlZCBpbWFnZSBpcyB0aGUgZGlz
ayBzZWN0b3IgMC4gSXQgaXMgYSBub3JtYWwgZGlzayBpbWFnZSB3aXRoIHBhcnRpdGlvbnMuIEkg
ZGlkbid0IHRlc3QgRUZJLCB3aGljaCBtaWdodCB1c2UgR1BUIGJ1dCB0aGUgb3RoZXIgb25lIGlz
IHNpbXBseSBhIERPU01CUiBwYXJ0aXRpb25lZCBkaXNrLgo+IAo+IFRoZSBkZWZhdWx0IHNpemUg
aXMgYWJvdXQgMjU2TUIgKG9yIGlzIGl0IDEyOD8pLiBKdXN0IGRkIGl0IHRvIHNvbWV0aGluZyBh
IGxpdHRsZSBiaXQgYmlnZ2VyIGFuZCBsZXQgaXQgcnVuLgo+IAo+IFJlZ2FyZHMsCj4gCgoKWWVz
LCBteSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgVUVGSSBtYW5kYXRlcyBHUFQuCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
