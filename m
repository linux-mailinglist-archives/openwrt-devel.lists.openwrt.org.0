Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7CA1DFEE0
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 14:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgCEBObuqBGRx33+Z1+ooS9bitPI35VpjJrunN3wnQc=; b=lVOfTC9LE0z5n4
	Q9FNlCB5R43ImE7eeQWNfEmqtZh0Ltfzc7m/x9DV/zYkppsk4HmfnA7d//SxLvxaDqu+wj1Ghmgjf
	1BwGelDiPyjj2A+UD1MPGYHlUCjWejfYi/gU8Yp7zAmnA51cgjQkGN8ewh0t62GlPB5+d9mIjPp0B
	I/TDfeX9QlZNIkg7yOEWfXSmmVeIcr2CLoQfnTzfLjK8Ot+wZs38KMKztJ6f0yRdHLhnx/1CVaQXK
	X4+d+xAoC0KDrucUja8AeC+kbeR6BcMR/mHeMigv2T51XoLOBg1Q4jvUQqsUDyD3af//GZq9W+jqx
	hkE73BfHIE38dqsPWIew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcpb2-0001Sy-Gk; Sun, 24 May 2020 12:19:16 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcpav-0001Rz-Ty
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 12:19:12 +0000
Received: (qmail 10832 invoked from network); 24 May 2020 12:19:00 -0000
Received: from localhost (HELO ?IPv6:2a02:790:ff:921:105e:7e41:4329:897e?)
 (127.0.0.1)
 by achernar.uberspace.de with SMTP; 24 May 2020 12:19:00 -0000
To: Michael Jones <mike@meshplusplus.com>,
 Baptiste Jonglez <baptiste@bitsofnetworks.org>
References: <20200523180045.GB1372015@tuxmachine.localdomain>
 <CAJQUmm4xUhFZEUs+z+cH5KY30rY7-1QtO8Pdb-6o71_ahp=usQ@mail.gmail.com>
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent.wiemann@ironai.com; prefer-encrypt=mutual; keydata=
 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
 sFWRrW2QGIhjT+Y4XMq8yZQ=
Message-ID: <75894baa-6c26-81e0-8861-89158f41e127@ironai.com>
Date: Sun, 24 May 2020 14:18:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJQUmm4xUhFZEUs+z+cH5KY30rY7-1QtO8Pdb-6o71_ahp=usQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_051910_254689_BE35718D 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Experimental "release goals" for 19.07.4
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjMuMDUuMjAgMjE6MzQsIE1pY2hhZWwgSm9uZXMgd3JvdGU6Cj4gCj4gCj4gT24gU2F0LCBN
YXkgMjMsIDIwMjAsIDEzOjAxIEJhcHRpc3RlIEpvbmdsZXogPGJhcHRpc3RlQGJpdHNvZm5ldHdv
cmtzLm9yZyA8bWFpbHRvOmJhcHRpc3RlQGJpdHNvZm5ldHdvcmtzLm9yZz4+IHdyb3RlOsKgCj4g
Cj4gICAgIElmIHRoZSBpbml0aWFsIGNvbmNlcHQgbG9va3MgZ29vZCwgd2UgY2FuIHRoaW5rIGFi
b3V0IGF1dG9tYXRpbmcgc29tZSBvZiBpdDoKPiAgICAgdGFnIGJ1ZyByZXBvcnRzIG9uIEZseXNw
cmF5L0dpdGh1Yi9HaXRsYWIgYXMgYmxvY2tpbmcgZm9yIGEgc3BlY2lmaWMKPiAgICAgcmVsZWFz
ZSwgdXNlICJtaWxlc3RvbmVzIiwgYXV0b21hdGljYWxseSBmaW5kIGNvbW1pdHMgdGhhdCBzYXRp
c2Z5IGEgZ29hbCwgZXRjLgo+IAo+IAo+IAo+IEkgZmluZCBpdCB2ZXJ5IGNvbmZ1c2luZyB0aGF0
IHRoZXJlIGFyZSBzbyBtYW55IGRpZmZlcmVudCBwbGFjZXMgZm9yIGJ1Z3MgdG8gbGl2ZSBhbmQg
YmUgdHJhY2tlZC4KPiAKPiBXaGF0J3MgZ29pbmcgb24gd2l0aCBnaXRsYWI/IElzIHRoYXQgZ29p
bmcgdG8gYmUgdGhlIHNvdXJjZSBvZiB0cnV0aCBmb3IgT3BlbldSVD8gT3Igd2lsbCB3ZSBhbHdh
eXMgaGF2ZSAzIGRpZmZlcmVudCBidWcgdHJhY2tlcnM/Cj4gCgoKVGhlIG91dGNvbWUgb2YgdGhl
IGRpc2N1c3Npb25zIHdhcyBxdWl0ZSBjbGVhci4gR2l0bGFiIHdpbGwgbGlrZWx5IGJlY29tZSB0
aGUgInNvdXJjZSBvZiB0cnV0aCIgbWlycm9yaW5nL21lcmdpbmcgZXZlcnl0aGluZyBhcyB5b3Ug
c2FpZC4KWW91IGNhbiBzdGlsbCBjcmVhdGUgaXNzdWVzIG9uIEdpdGh1Yi9GbHlzcHJheSBhbmQg
eW91J2xsIGZpbmQgYWxsIG9mIHRoZW0gb24gR2l0bGFiLgpCdXQgdGhhdCBzdGlsbCBuZWVkcyBh
IGxvdCBvZiB3b3JrLiBJdCB3b3VsZCBiZSBncmVhdCBpZiB5b3UgY291bGQgcGFydGljaXBhdGUg
aW4gdGhlIGV2YWx1YXRpb24gcHJvY2VzcyBpZiB5b3UgYXJlIGZhbWlsaWFyIHdpdGggR2l0bGFi
LgpodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvMjIxOAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
