Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E221B0051
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 05:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:In-Reply-To:To:
	References:Date:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGOL6nX51hAWVFWX8Bk1pzW+JfEtcUvZcs4wlDEb7U0=; b=bVpTz3o+aTnocZ
	TcDOw5cAsj0lByyLZkYMDz5Cqq3iHLX2c6VauIsReUhv+/fjyEfmBUy7Sak2VeWs63LBJXtpvYyv0
	M8UBqbNEQgadXznMslh0uWB5tPbiVJWXTyvJvq/GnFNFXRKYthcTIxik7cyDgHiS2f5C2kAMFPLaF
	cezeCPoLEIx1UQRYUShFMisHvd+h0TkauM7hhXJUOnSJFsA7WJz1Gkjkqj8N/HBloFXRyzAGtch8l
	llfKH7ATgzo65Ka1kEjmcseskvjGDZejFG1fJx7rNHOhMUkYXNuSRgcxji61N07L1pWWsS3T1ZVHC
	x9HrM/VgqVALL4gKNOZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQNST-00057s-5n; Mon, 20 Apr 2020 03:50:57 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQNSL-00057L-Hf
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 03:50:50 +0000
Received: from macmini.redfish-solutions.com (macmini.redfish-solutions.com
 [192.168.1.38]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03K3onr3010603
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 21:50:49 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Date: Sun, 19 Apr 2020 21:50:48 -0600
References: <C9819030-4300-40CD-8FCE-A93314F1BD4B@redfish-solutions.com>
To: openwrt-devel@lists.openwrt.org
In-Reply-To: <C9819030-4300-40CD-8FCE-A93314F1BD4B@redfish-solutions.com>
Message-Id: <1B667E92-3E0C-406D-990C-C85B4BE45722@redfish-solutions.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_205049_692647_6AA48E39 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Can build x86_64 because of ntf_reject_ipv4.ko
 missing
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnaC4KCipDYW7igJl0KiBidWlsZC4KCgoKPiBPbiBBcHIgMTksIDIwMjAsIGF0IDk6NDcgUE0s
IFBoaWxpcCBQcmluZGV2aWxsZSA8cGhpbGlwcF9zdWJ4QHJlZGZpc2gtc29sdXRpb25zLmNvbT4g
d3JvdGU6Cj4gCj4gSGkgYWxsLAo+IAo+IEkganVzdCByZWJhc2VkIHRvIG9wZW53cnQgbWFzdGVy
IHRvZGF5LCBhbmQgdHJpZWQgdG8gcmVidWlsZCBmcm9tIHNjcmF0Y2ggYnV0IEnigJltIGdldHRp
bmc6Cj4gCj4gbWFrZVszXTogRW50ZXJpbmcgZGlyZWN0b3J5ICcvaG9tZS9waGlsaXBwL2xlZGUv
cGFja2FnZS9rZXJuZWwvbGludXgnCj4gbWtkaXIgLXAgL2hvbWUvcGhpbGlwcC9sZWRlL3N0YWdp
bmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9yb290LXg4Ni9zdGFtcAo+IAo+IFNIRUxMPSBmbG9j
ayAvaG9tZS9waGlsaXBwL2xlZGUvdG1wLy5yb290LWNvcHkuZmxvY2sgLWMgJ2NwIC1mcFIgL2hv
bWUvcGhpbGlwcC9sZWRlL2J1aWxkX2Rpci90YXJnZXQteDg2XzY0X211c2wvbGludXgteDg2XzY0
L3BhY2thZ2VzLy5wa2dkaXIva2VybmVsLy4gL2hvbWUvcGhpbGlwcC9sZWRlL3N0YWdpbmdfZGly
L3RhcmdldC14ODZfNjRfbXVzbC9yb290LXg4Ni8nCj4gdG91Y2ggL2hvbWUvcGhpbGlwcC9sZWRl
L3N0YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9yb290LXg4Ni9zdGFtcC8ua2VybmVsX2lu
c3RhbGxlZAo+IEVSUk9SOiBtb2R1bGUgJy9ob21lL3BoaWxpcHAvbGVkZS9idWlsZF9kaXIvdGFy
Z2V0LXg4Nl82NF9tdXNsL2xpbnV4LXg4Nl82NC9saW51eC01LjQuMzMvbmV0L2lwdjQvbmV0Zmls
dGVyL25mdF9yZWplY3RfaXB2NC5rbycgaXMgbWlzc2luZy4KPiBtb2R1bGVzL25ldGZpbHRlci5t
azoxMDY4OiByZWNpcGUgZm9yIHRhcmdldCAnL2hvbWUvcGhpbGlwcC9sZWRlL2Jpbi90YXJnZXRz
L3g4Ni82NC9wYWNrYWdlcy9rbW9kLW5mdC1jb3JlXzUuNC4zMy0xX3g4Nl82NC5pcGsnIGZhaWxl
ZAo+IG1ha2VbM106ICoqKiBbL2hvbWUvcGhpbGlwcC9sZWRlL2Jpbi90YXJnZXRzL3g4Ni82NC9w
YWNrYWdlcy9rbW9kLW5mdC1jb3JlXzUuNC4zMy0xX3g4Nl82NC5pcGtdIEVycm9yIDEKPiBtYWtl
WzNdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvcGhpbGlwcC9sZWRlL3BhY2thZ2Uva2VybmVs
L2xpbnV4Jwo+IHRpbWU6IHBhY2thZ2Uva2VybmVsL2xpbnV4L2NvbXBpbGUjNC4yOSMwLjE4IzQu
NzYKPiBwYWNrYWdlL01ha2VmaWxlOjExMTogcmVjaXBlIGZvciB0YXJnZXQgJ3BhY2thZ2Uva2Vy
bmVsL2xpbnV4L2NvbXBpbGUnIGZhaWxlZAo+IG1ha2VbMl06ICoqKiBbcGFja2FnZS9rZXJuZWwv
bGludXgvY29tcGlsZV0gRXJyb3IgMgo+IG1ha2VbMl06IExlYXZpbmcgZGlyZWN0b3J5ICcvaG9t
ZS9waGlsaXBwL2xlZGUnCj4gcGFja2FnZS9NYWtlZmlsZToxMDc6IHJlY2lwZSBmb3IgdGFyZ2V0
ICcvaG9tZS9waGlsaXBwL2xlZGUvc3RhZ2luZ19kaXIvdGFyZ2V0LXg4Nl82NF9tdXNsL3N0YW1w
Ly5wYWNrYWdlX2NvbXBpbGUnIGZhaWxlZAo+IG1ha2VbMV06ICoqKiBbL2hvbWUvcGhpbGlwcC9s
ZWRlL3N0YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9zdGFtcC8ucGFja2FnZV9jb21waWxl
XSBFcnJvciAyCj4gbWFrZVsxXTogTGVhdmluZyBkaXJlY3RvcnkgJy9ob21lL3BoaWxpcHAvbGVk
ZScKPiAvaG9tZS9waGlsaXBwL2xlZGUvaW5jbHVkZS90b3BsZXZlbC5tazoyMTg6IHJlY2lwZSBm
b3IgdGFyZ2V0ICd3b3JsZOKAmSBmYWlsZWQKPiAKPiAKPiB3aGljaCBmcmFua2x5IEkgZG9u4oCZ
dCB1bmRlcnN0YW5kLiAgU2hvdWxkbuKAmXQgYWxsIG9mIHRoZSBkZXBlbmRlbmNpZXMgZm9yIHRo
ZSBrbW9kLSogdGFrZSBjYXJlIG9mIGl0c2VsZj8KPiAKPiBJIGhhdmU6Cj4gCj4gcGhpbGlwcEB1
YnVudHUxNjp+L2xlZGUkIGdyZXAgLWkgcmVqZWN0IC5jb25maWcKPiBDT05GSUdfUEFDS0FHRV9r
bW9kLW5mLXJlamVjdD15Cj4gQ09ORklHX1BBQ0tBR0Vfa21vZC1uZi1yZWplY3Q2PXkKPiBwaGls
aXBwQHVidW50dTE2On4vbGVkZSQgCj4gCj4gYnV0IEkgZG9u4oCZdCBrbm93IGlmIHNvbWV0aGlu
ZyBlbHNlIGlzIG5lZWRlZCBmb3Iga21vZC1uZnQtcmVqZWN0IG9yIHdoYXQuCj4gCj4gTG9va2lu
ZyBpbiBwYWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL25ldGZpbHRlci5tayBJIGRvbuKAmXQg
c2VlIGFueXRoaW5nIG9idmlvdXMuICBPZiBjb3Vyc2UsIEnigJltIG5vdCBzdXJlIEkgdW5kZXJz
dGFuZCB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIG5mLXJlamVjdCogYW5kIG5mdC1yZWplY3QqIGFm
dGVyIHN0YXJpbmcgYXQgdGhpcyBmb3Igc28gbG9uZy4KPiAKPiBJ4oCZbSBleGNpdGVkIGFib3V0
IGJlaW5nIGFibGUgdG8gYnVpbGQgNS40IChldmVudHVhbGx5KSwgYnV0IG5lZWQgdG8gZ2V0IHBh
c3QgdGhpcyBibG9ja2VyLgo+IAo+IE15IHByb2R1Y3Rpb24gcm91dGVyIGlzIGFsc28gd2hlcmUg
SSB0ZXN0IHVwc3RyZWFtIG15IHByb3Bvc2VkIGNvbnRyaWJ1dGlvbnMgZm9yIFRhY2FjcyssIHh0
YWJsZXMtYWRkb25zLCBldGMuCj4gCj4gQW55IGFzc2lzdGFuY2UgYXBwcmVjaWF0ZWQuCj4gCj4g
VGhhbmtzLAo+IAo+IC1QaGlsaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
