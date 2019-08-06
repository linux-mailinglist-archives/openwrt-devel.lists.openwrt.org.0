Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555F48319D
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 14:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aO/GhRGZUgKLz1QBNSKCIC5TRUo61C2KCm50Jq2ioZo=; b=M3JQ+dM1HcDuqP
	N2ipDC6ceOi5i90hVOb9UPhto04ZTUP+eRL+JffVmdz5uF2lpRJYQhWVD406ybr9ekscalYrXUTr6
	RFotZg5oBJDSqlGeSFLfTb1EKfMK/JdzV/tTmEGdaaWQsTGtYcnznWD6sDCSeafEE4LnlNBp3tqHe
	jB/pud4ULjShExMbpPBQ9DR1hxmSABdRqLJSgw95ujNgncdKrdFHUwwdxE88PqxT7hx4ESGLuPPgi
	EgW2VVL07E8ExqP1keEIOkp7+pHKjGz7uzIcLzqZTGNf/9t6QZitIIW8wueGFcxAoU7i4bnOv+6pd
	A2OYW8PDZGV9Tqypoxdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyox-0005yX-Il; Tue, 06 Aug 2019 12:44:07 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huyoo-0005xv-2c
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 12:43:59 +0000
Received: from miraculix.mork.no ([IPv6:2a02:2121:344:fa30:d4:46ff:fef9:b4a])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x76ChlYr012271
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 6 Aug 2019 14:43:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1565095430; bh=s8YkgCMUlCUs1S1aewxCliRboZBE/vB+6YO43XnYTfI=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=SCvj6VulW6GpLrUZaY3KTaFP2KNujntz5JRnrXTCq59mmAY5ETG0PRTLJ7DSXXog7
 eIMCYAUu7aKTDCu1Cx0da6pCh6mOw+epo0wHAFA9JAjY9R+gGUTs1enMPHf9UW5rVx
 PqT4IIOI/C+ozYs7q0uTFopsJie4wgSfIxzIGyeI=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1huyoX-0005N9-FU; Tue, 06 Aug 2019 14:43:41 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Organization: m
References: <20190718133614.6978-1-tomek_n@o2.pl>
Date: Tue, 06 Aug 2019 14:43:41 +0200
In-Reply-To: <20190718133614.6978-1-tomek_n@o2.pl> (Tomasz Maciej Nowak's
 message of "Thu, 18 Jul 2019 15:36:14 +0200")
Message-ID: <87blx2pipu.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_054358_634147_3417AC4A 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: enable xHCI USB controller
 connected to PCIe
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4gd3JpdGVzOgoKPiBUaGlzIGNvbW1p
dCBmaXhlcyByZWdyZXNzaW9uIG9uIExpbmtzeXMgV1JUMTkwMCAoTWFtYmEpIHdoZXJlIHRoaXMg
ZGV2aWNlCj4gZG9lc24ndCBoYXZlIFVTQiAzLjAgY29udHJvbGxlciBpbnRlZ3JhdGVkIGluIFNv
QywgaW5zdGVhZCBpdCBoYXMgRXRyb24KPiBFSjE2OCBjb25uZWN0ZWQgdG8gUENJZSBsYW5lLiBQ
cmV2aW91c2x5IGVuYWJsZWQgaW4ga2VybmVsIDQuNCBhbmQgNC45LAo+IHdhcyBsb3N0IGluIHRy
YW5zaXRpb24gdG8gNC4xNC4KClRoaXMgaXMgbm90IGNvcnJlY3QuICBDT05GSUdfVVNCX1hIQ0lf
UENJIGRlZmF1bHRzIHRvIHkgd2hlbgpDT05GSUdfVVNCX1hIQ0lfSENEIGFuZCBDT05GSUdfVVNC
X1BDSSBhcmUgZW5hYmxlZC4gIFRoZSBFSjE2OCBvbiBNYW1iYQp3b3JrcyBqdXN0IGZpbmUgb24g
djQuMTQgd2l0aG91dCB0aGlzIHBhdGNoLgoKVGhlIHhoY2ktcGNpIGRyaXZlciBpcyBhbHNvIGVu
YWJsZWQgYW5kIGJpbmRzIHRvIHRoZSBFSjE2OCBvbiB2NC4xOS4gQW5kCml0IGFsbW9zdCB3b3Jr
cyAtIGFzIHNob3duIGJ5IG15IHVzYm1vbiB0cmFjZXMuICBUaGVyZSB3b3VsZCBvYnZpb3VzbHkK
bm90IGJlIGFueSBwb3J0IG9yIGJ1cyB0byB0cmFjZSBpZiB0aGUgRUoxNjggZHJpdmVyIHdhcyBk
aXNhYmxlZC4uLgoKU28gdGhpcyBmaXggaGFzIG5vIGVmZmVjdC4gIFRoZSB2NC4xNCAtPiB2NC4x
OSByZWdyZXNzaW9uIG9uIE1hbWJhIG11c3QKYmUgY2F1c2VkIGJ5IHNvbWV0aGluZyBlbHNlLgoK
QnV0IEkgYW0gc3RhcnRpbmcgdG8gd29uZGVyIGlmIGl0IG1pZ2h0IGJlIHVucmVsYXRlZCB0byBP
cGVuV3J0LCBFSjE2OAphbmQgTWFtYmEgYXQgYWxsLiBUaGVyZSBhcmUgc29tZSBzdXNwaWNpb3Vz
LWxvb2tpbmcgY2hhbmdlcyB0byB0aGUKc2VyaWFsIGRyaXZlciAoaW9fZWRnZXBvcnQpIEkgYW0g
dXNpbmcuICBJJ2xsIGRvIHNvbWUgdGVzdGluZyB3aXRoIG90aGVyCmRldmljZXMgYW5kIHBsYXRm
b3Jtcy4KCgpCasO4cm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
