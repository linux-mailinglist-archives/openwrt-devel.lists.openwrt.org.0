Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA3A1EF9A3
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 15:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dapl51NHMxghWdAsw02MQXzZwxD8mTi9UX6z9OSne4E=; b=VnSfImKdYVZEYXTRali7eKNju
	Ng+eOoqZfNvnWI4NTsMv2C5ypwQ1jF5YBRqqBJA83k/U52kB4mS7EcjhGm4TYN+1R79eQ+qLNxU42
	y6NUARffSnpSxJId7q1hpwdOCydwpUdFct0WoPdKfNifnUwKbuKnOzvWvZlq22bCRvwC8w9LxJH5r
	T5NesJp6Ic7Ber28NDKEc1TDA8dqGsd4dFC1kpR1fxKxZ8WaP2SWIK8kkpNvIIMw+9GUXZpdbMuJn
	aKwGQ92rnch7r7RoYbwgaJhnYvgAGOb0x52RT6yV5Kc/RnPRSNklMYnrILc8S0+lYIiqnmBddIDjy
	HxDp2e6eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCjh-0002Ud-JB; Fri, 05 Jun 2020 13:50:17 +0000
Received: from mail.nic.br ([2001:12ff:0:4::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCjW-0000VE-Hc
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 13:50:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.nic.br (Postfix) with ESMTP id 964261CBD1E
 for <openwrt-devel@lists.openwrt.org>; Fri,  5 Jun 2020 10:49:53 -0300 (-03)
Authentication-Results: mail.nic.br (amavisd-new); dkim=pass (1024-bit key)
 header.d=nic.br
Received: from mail.nic.br ([127.0.0.1])
 by localhost (mail.nic.br [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kBOaQatlei4b for <openwrt-devel@lists.openwrt.org>;
 Fri,  5 Jun 2020 10:49:53 -0300 (-03)
Received: from [200.160.6.25] (vpn-client-2.simet.nic.br [200.160.6.25])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: henrique@nic.br)
 by mail.nic.br (Postfix) with ESMTPSA id 186AD1CBD1A
 for <openwrt-devel@lists.openwrt.org>; Fri,  5 Jun 2020 10:49:53 -0300 (-03)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nic.br; s=dkim;
 t=1591364993; bh=CDq4czGDne0o/ccS0jpLxSdnlpren4zwNYY0fOLNCW4=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=VYWKT+b/LAThpXzm0SiAdr2Gigs/Cn3qhbx38GdXSxMJYSxAQHh9epILaknsq+rWf
 QruZh0RPfPgFWjCM9cSs1eMswjFpHB70djFi/Pukhq6bwk7mzx4nA7Bc4eq3F1Wae4
 i6y63EK4NSRj6SfotocuuDNi5tpSI4cGfjBgZbms=
To: openwrt-devel@lists.openwrt.org
References: <20200605114736.63933-1-freifunk@adrianschmutzler.de>
 <87y2p1u28j.fsf@miraculix.mork.no>
From: Henrique de Moraes Holschuh <henrique@nic.br>
Organization: NIC.br
Message-ID: <c73a7e52-c0b0-d374-22de-69e0524d1315@nic.br>
Date: Fri, 5 Jun 2020 10:50:22 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <87y2p1u28j.fsf@miraculix.mork.no>
Content-Language: pt-BR
DMARC-Filter: OpenDMARC Filter v1.3.1 mail.nic.br 186AD1CBD1A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_065006_916470_837DFE21 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:12ff:0:4:0:0:0:5 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFC PATCH] sysupgrade: introduce compatibility
 version for devices
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMDUvMDYvMjAyMCAwOToyNywgQmrDuHJuIE1vcmsgd3JvdGU6Cj4gSSB3b25kZXIgaWYgdGhl
cmUgbWlnaHQgYmUgbW9yZSBmbGV4aWJsZSBhbmQgdXNlci1mcmllbmRseSB3YXlzIHRvCj4gaGFu
ZGxlIHVwZ3JhZGUgaW5jb21wYXRpYmlsaXRpZXMgaWYgd2UgYXJlIGFsbG93ZWQgdG8gdXNlIGNv
ZGUvbWV0YWRhdGEKPiBmcm9tIHRoZSBuZXcgaW1hZ2UgaW4gdGhlIHN5c3VwZ3JhZGUgcHJvY2Vz
cz8gIEluc3RlYWQgb2YganVzdCBwcm92aWRpbmcKPiBhIHZlcnNpb24gbnVtYmVyIHdpdGggc29t
ZSBzaW1wbGUgc2VtYW50aWNzIGxpa2UgeW91IGRlc2NyaWJlLCB0aGUgbmV3Cj4gaW1hZ2UgY291
bGQgcHJvdmlkZSBhIHNjcmlwdCBzbmlwcGV0IG9yIHNpbWlsYXIgd2hpY2ggY29kaWZpZXMgYSBt
b3JlCj4gcHJlY2lzZSBkZXNjcmlwdGlvbiBvZiB0aGUgaW5jb21wYXRpYmlsaXR5LiBBbmQgZXZl
biBhIHNvbHV0aW9uLCBpZgo+IHRoZXJlIGlzIG9uZS4KCkEgbWVzc2FnZSAob3IgVVJMPykgbWln
aHQgYmUgbmljZSwgeWVzLiAgVGhhdCdzIG5vdCBzb21ldGhpbmcgd2UgaGF2ZSAKcmlnaHQgbm93
Li4uCgo+IEZvciB0aGUgRFNBIGV4YW1wbGUsIHN1Y2ggYSBzY3JpcHQgY291bGQgKG9wdGlvbmFs
bHk/KSBtb3ZlIGFuCj4gaW5jb21wYXRpYmxlIGNvbmZpZy9uZXR3b3JrIG91dCBvZiB0aGUgd2F5
LCB3aGlsZSBsZWF2aW5nIGFsbCBvdGhlcgoKVGhhdCdzIHR5cGljYWxseSBhIGpvYiBvZmZsb2Fk
ZWQgdG8gL2V0Yy91Y2ktZGVmYXVsdHMvKiBmcm9tIHRoZSBuZXcgCmltYWdlLCBpc24ndCBpdD8g
ICBUaGVyZSdzIGEgbG90IG9mIGFyNzF4eCAtPiBhdGg3OSBoYW5kbGluZyBkb25lIHRoYXQgCndh
eSBhbHJlYWR5Li4uCgpEb3duZ3JhZGVzIGFyZSwgb2YgY291cnNlLCB1bnN1cHBvcnRlZC4gIFRo
ZXkgY291bGQgYmUsIGJ1dCBpdCB3b3VsZCAKd2FzdGUgcHJlY2lvdXMgZmxhc2gsIGl0IG1ha2Vz
IG1vcmUgc2Vuc2UgdG8gd2FybiB1c2VycyB0byBiYWNrdXAgCmJlZm9yZWhhbmQgaW4gdGhlIEx1
Q0kgaW50ZXJmYWNlIChhbmQgbm90IG1lc3Mgd2l0aCBzeXN1cGdyYWRlIGl0c2VsZiwgCndoaWNo
IG5lZWRzIHRvIGJlIGFibGUgdG8gKipzYWZlbHkqKiB3b3JrIHVuYXR0ZW5kZWQgYXMgd2VsbCku
CgotLSAKSGVucmlxdWUgZGUgTW9yYWVzIEhvbHNjaHVoCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
