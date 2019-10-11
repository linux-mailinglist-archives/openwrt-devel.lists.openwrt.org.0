Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB74D39A7
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 08:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uIj5W2fYHbj4CbbKWb/5ho8HVUJNnz0iwUxH8vuP47c=; b=e4n/aRpwNiBh4+eB6w+BGHW0x
	cBONw/uFa2WJ5xhMpNMRoGFjy5Ksd+5ODnS7uWcbg0iE+Sf6lEkN7uS2MDZ66Iz9KdTVOM0o+jsng
	21brnJsFgv9WRd8l2O8DrFWLdkYOJ24MfANGC6kyx5yNhQn55kgZO6AceNXQJOAS+Lfpn4wT5B80U
	Mj76EMJemf7IYszFtVOAdP/h/fQ9pb/Zw0Wllt3UlNIc3hAe7/zmc57J1KDkZ7m5YnVnbTjTU4PVR
	kc4DYVIcpWbVToZ8vZwkz0fJB8bO4T3gArQEQXgUP4JI4m05DEmeawG88mRpsNP8genkGNL8Uf00i
	li8lizO4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIolq-0002lC-1c; Fri, 11 Oct 2019 06:51:26 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIolf-0002kd-JD
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 06:51:17 +0000
Received: from p5dcfbc71.dip0.t-ipconnect.de ([93.207.188.113]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iIolb-0005sX-Kw; Fri, 11 Oct 2019 08:51:11 +0200
To: =?UTF-8?Q?Alin_N=c4=83stac?= <alin.nastac@gmail.com>
References: <1570624897-16993-1-git-send-email-alin.nastac@gmail.com>
 <f67728d2-88d6-433d-74f4-671ca22599d5@phrozen.org>
 <CAF1oqRD6fe0Aif=1AFhTO-ccW-sVFPcgCdou2ksN9vEKFduqCg@mail.gmail.com>
 <00a2f245-2a85-e597-e6a8-74269d0f31ae@phrozen.org>
 <CAF1oqRBz8sNObj42A59AC24HwgFGS0RGiyEQdspnk=Kq+CGHtQ@mail.gmail.com>
 <CAF1oqRBGqB6EbDx4P0ravefuYG1wpefGN4wGw296JcGCeXUAAw@mail.gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <963d59e8-f6e8-ddc0-6a17-5f849ff3d50f@phrozen.org>
Date: Fri, 11 Oct 2019 08:51:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAF1oqRBGqB6EbDx4P0ravefuYG1wpefGN4wGw296JcGCeXUAAw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_235115_790809_5FE5B03B 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] fstools: add a hook before mounting the
 overlay
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDEwLzEwLzIwMTkgMTM6MDIsIEFsaW4gTsSDc3RhYyB3cm90ZToKPiBPbiBXZWQsIE9jdCA5
LCAyMDE5IGF0IDQ6NTIgUE0gQWxpbiBOxINzdGFjIDxhbGluLm5hc3RhY0BnbWFpbC5jb20+IHdy
b3RlOgo+PiBPbiBXZWQsIE9jdCA5LCAyMDE5IGF0IDQ6NDEgUE0gSm9obiBDcmlzcGluIDxqb2hu
QHBocm96ZW4ub3JnPiB3cm90ZToKPj4+Cj4+PiBPbiAwOS8xMC8yMDE5IDE2OjM0LCBBbGluIE7E
g3N0YWMgd3JvdGU6Cj4+Pj4gT24gV2VkLCBPY3QgOSwgMjAxOSBhdCAyOjU5IFBNIEpvaG4gQ3Jp
c3BpbiA8am9obkBwaHJvemVuLm9yZz4gd3JvdGU6Cj4+Pj4+IE9uIDA5LzEwLzIwMTkgMTQ6NDEs
IEFsaW4gTmFzdGFjIHdyb3RlOgo+Pj4+Pj4gU2NyaXB0cyBsb2NhdGVkIGluIHRoZSBkaXJlY3Rv
cnkgL2xpYi9tb3VudF9yb290IHdpbGwgYmUgZXhlY3V0ZWQKPj4+Pj4+IGJlZm9yZSBtb3VudGlu
ZyB0aGUgb3ZlcmxheS4KPj4+Pj4+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGluIE5hc3RhYyA8
YWxpbi5uYXN0YWNAZ21haWwuY29tPgo+Pj4+PiBIaSwKPj4+Pj4KPj4+Pj4gc2hvdWxkIGl0IG5v
dCBiZSAvZXRjL21vdW50X3Jvb3QuZC8gPyB3aGF0IGRvIHlvdSBuZWVkIHRoaXMgZm9yIGlmIEkg
bWF5Cj4+Pj4+IGFzayA/Cj4+Pj4+Cj4+Pj4+IGZ1cnRoZXIgY29tbWVudHMgaW5saW5lIC4uLgo+
Pj4+Pgo+Pj4+PiAgICAgICAgSm9obgo+Pj4+Pgo+Pj4+IEhpIEpvaG4sCj4+Pj4KPj4+PiBNeSB0
YXJnZXQgaXMgZHVhbCBiYW5rIGFuZCBJIG5lZWQgdG8gY29weSBwYXJ0cyBvZiB0aGUgY3VzdG9t
aXphdGlvbgo+Pj4+IGZyb20gdGhlIG9sZCBiYW5rIGFmdGVyIHVwZ3JhZGUuCj4+PiBwbGVhc2Ug
ZG9udCByZW1vdmUgdGhlIENDIHRvdCBoZSBtYWlsaW5nIGxpc3QKPj4gU29ycnksIEkgcHVzaGVk
IHRoZSB3cm9uZyByZXBseSBidXR0b24uCj4+Cj4+PiBJIGRvbnQgdW5kZXJzdGFtZCB0aGlzIHBh
cnQsIHNob3VsZCBzeXN1cGdyYWRlIG5vdCBiZSBhYmxlIHRvIGhhbmRsZQo+Pj4gdGhpcyBmb3Ig
eW91ID8KPj4gV2VsbCwgaXQgaXMgbm90IHRoYXQgc3RyYWlnaHRmb3J3YXJkIGFzIHNhdmluZyAm
IHJlc3RvcmluZyB0aGUgb2xkCj4+IGNvbmZpZ3VyYXRpb24gZmlsZXMuIE9ubHkgcGFydHMgb2Yg
dGhlIFVDSSBjb25maWd1cmF0aW9uIG11c3QgYmUKPj4gbWlncmF0ZWQuIEZvciBpbnN0YW5jZSwg
VUNJIG9wdGlvbiBhLmIuYyBtdXN0IGJlIGNvcGllZCBmcm9tIHRoZSBvbGQKPj4gaW1hZ2UsIGJ1
dCBhLmIuZCBtdXN0IGJlIHJlc2V0IHRvIHRoZSB2YWx1ZSBmb3VuZCBpbiB0aGUgbmV3IGltYWdl
Lgo+Pgo+IElzIHRoaXMgdXNlIGNhc2UgYSBnb29kIGVub3VnaCByZWFzb24gdG8gaW1wbGVtZW50
IHRoaXMgZmVhdHVyZT8KPgo+Pj4+IFRvIHJlc3VtZSB5b3VyIG9ic2VydmF0aW9uczoKPj4+PiAg
ICAtIHNjcmlwdHMgbXVzdCBiZSByZWxvY2F0ZWQgdG8gL2V0Yy9tb3VudF9yb290LmQvCj4+Pj4g
ICAgLSB1c2UgcnVucXVldWUgQVBJCj4+Pj4gICAgLSBpbXBsZW1lbnQgdGhlIG5lY2Vzc2FyeSBm
dW5jdGlvbnMgaW4gb3ZlcmxheS5jCj4+Pj4gV291bGQgdGhhdCBiZSBPSz8gSWYgc28sIEkgd2ls
bCBiZSBiYWNrIHdpdGggYSAybmQgdmVyc2lvbiBvZiB0aGlzIHBhdGNoLgo+Pj4gSSB3b3VsZCBm
aXJzdCBsaWtlIHRvIHVuZGVyc3RhbmQgdGhlIHVzZS1jYXNlCj4+Pgo+Pj4gICAgICAgSm9obgo+
IEkndmUgdHJpZWQgdG8gdXNlIHJ1bnF1ZXVlIEFQSS4uLiBUaGlzIEFQSSBpcyBkZXNpZ25lZCB0
byBiZSB1c2VkIGluCj4gY29uanVuY3Rpb24gd2l0aCB1bG9vcCwgd2hpY2ggaXMgZGVzaWduZWQg
dG8gYmUgdXNlZCB3aXRoaW4gZGFlbW9ucy4KPiBtb3VudF9yb290IGlzIG5vdCBhIGRhZW1vbiBh
bmQgaXQgZG9lcyBub3QgaGF2ZSBhIG1haW4gbG9vcCwgc28gSU1ITwo+IGl0IGRvZXMgbm90IGZp
dCB3ZWxsIGluIHRoaXMgcGxhY2UuCgpPZiBjb3Vyc2UgeW91IGFyZSByaWdodCBhYm91dCBydW5x
dWV1ZSwgSSBkb250IHF1aXRlIGZvbGxvdyB0aGUgYWN0dWFsIAp1c2UgY2FzZSBidXQgdGhlIGZl
YXR1cmUgd29udCBoYXJtIGkgZ3Vlc3MKCiDCoMKgwqAgSm9obgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
