Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D23989356
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 21:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z0hWcr4b+ZChEDGRjQy48dPIiNFk1NvNP9rL27B2jgI=; b=AupN0gIW77+FKr
	JXnk27WuEpxhMdXry7/ciN4mTXPRkmBzPyXZo1vFtzfRFPCOd07sddQh338LqfxNfhR4a3B+p1jAO
	xPFonCj/s97Vry0l7jqrlq/WhsjRD+JdVfRmr5J4UXEv4SiC8Q4jtC4JFPZjYeeTMMk0+P/P9syek
	mkqpUxSZkBac54NaWhzX/alYovsM3OM+AeRxjYzzFW2dEllAMheIffE5drobWpT6y6dLSR40yEVEX
	AaKPIuRcN2Wx68+VbFrrUyz9HpkfXJA0q+YwL8Iw0EfRnZGEeiVo55a5FAaludpotAJCekbSogfx0
	1nOeYhaUjJRNu6ZE3u2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwtWi-0000gW-LU; Sun, 11 Aug 2019 19:29:12 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwtWa-0000gB-NA
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 19:29:06 +0000
Received: from p4fcf952c.dip0.t-ipconnect.de ([79.207.149.44]
 helo=[192.168.2.103]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hwtWY-0001KO-8Q; Sun, 11 Aug 2019 21:29:02 +0200
To: openwrt-devel@lists.openwrt.org
References: <2f56d90d-39bf-7f63-0676-e0856e6d9f15@birger-koblitz.de>
 <75e48acf-8bfa-5101-3f9a-02ae2cc43c0a@kresin.me>
 <de6aa12b-8e9d-413c-7577-16b4d400f725@gmail.com>
 <eb294211-eeea-c830-ddf5-77ee9a279626@birger-koblitz.de>
 <CAFBinCBE1XYixKzCmzm6e3Pe06sW6K-iR8-6gBSc6VXJwdncQw@mail.gmail.com>
From: Birger Koblitz <mail@birger-koblitz.de>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@birger-koblitz.de; prefer-encrypt=mutual; keydata=
 mQGiBELb9iURBAD7URWZY2HQ38IvWh1pUBiOJMoMi3/qImwhh2hWCgfVPP2FsKD+84zNqJgi
 bIgCWeiHeyQ5fcUnpnn2aPNwMznRxmwjCfb4a6AUPKjZIETGREaWathA9kVAkIlnrZI16QpY
 cz9gWXenVe2bPTny723pQNhLKNhmTQySjQikSMiSAwCgvLxjtDu3gckDzjmA8qs25c6nxRsE
 ANZI7xZqR7wcvzs5/UxNd43UsAN8NYLaOd7E5jgjfaDUu6fxUgmZmWdM+F1Xkp91a4ZHQpMC
 NSAF+vPWiGEGJLhpNYDME/UhqQMDx95v6VvOiH2n4MC0ReW2YkhSCCP1uXVt2/Z7d7jmNtD9
 G8oRE1e/fdRmDMYsdcqN6DmkoJdGBADrr4sVPd6mywEL8kZVfwwPw1i3xMXk5GiAEHj+awo+
 eFTkS6F0K7IAuixm/qizf8zsUob0TRn4VCmFoyT3fkNLxjbi94g9koVQ2cUTCwmkRZkH3fUR
 /jX5ybnKUKO+jyAL2loVnYcC1I3EVzt0NFNx4siG3uzgfAdBF0bNEXjwOrQxQmlyZ2VyIEtv
 YmxpdHogKHByaXZhdGUpIDxtYWlsQGJpcmdlci1rb2JsaXR6LmRlPohaBBMRAgAaBQJMo3rM
 ApsPBosJCAcDAgSVAggDBJYCAwEACgkQ0SJkb/ufpr4lRQCgukvkUqWZ6FbRa6bPdutUcW08
 PacAn0rBrMyYzdUo/cvD7LTjOBH8eW6RuQENBELb9igQBAD//o2rYN5fVDYLPTWyRJj9di9e
 Cwp3T9s+AnY9R7s6U6MDaLfFSzCwpJZTeYkN8V/n5C2iTIQomUkhrc8v4YMlI71XHs+qoSsu
 lvzjlu9eRHysSWbtmeNjGPRKrJHfQCywifrSgY3xJzteY1Ks9JAnW4QKhZQvgHi920f3KL63
 5wADBQP6AuAqbvBdXAoxLuJmiCojzsqF+J4ZBMFvuXd8md2EYtQV74ZqxbAcDo9ELNh+2VNd
 vnsn05NswHNBpaSnhTNzr0TkNkRRQAhZ8rwNbNh0iVuT4PADlyDkEWdNfBl1MUfs8OyCj1tB
 l2UGeJ+DNp1+X8AiNyGmdEicozb90I7UBVyISQQYEQIACQUCTKN6zAKbDAAKCRDRImRv+5+m
 vg64AJwISUIlauuw6sMaWhGtqGzBc96pAACeKH15f9ssxrnwYSzk1spOsw8ejpM=
Message-ID: <81a50327-a181-2497-204a-5ed4655aa7d6@birger-koblitz.de>
Date: Sun, 11 Aug 2019 21:29:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCBE1XYixKzCmzm6e3Pe06sW6K-iR8-6gBSc6VXJwdncQw@mail.gmail.com>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1565551744;
 cf776b3c; 
X-HE-SMSGID: 1hwtWY-0001KO-8Q
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_122904_903170_6C5AC6E8 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: use gpio_hog instead of
 gpio-export
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

RGVhciBNYXJ0aW4gYW5kIEVucmljbywKCnRoYW5rcyBmb3IgeW91ciBjb21tZW50cy4KCk9uIDEx
LjA4LjE5IDEzOjM4LCBNYXJ0aW4gQmx1bWVuc3RpbmdsIHdyb3RlOgo+IE9uIFN1biwgQXVnIDEx
LCAyMDE5IGF0IDE6MDAgUE0gQmlyZ2VyIEtvYmxpdHogPG1haWxAYmlyZ2VyLWtvYmxpdHouZGU+
IHdyb3RlOgo+PiBJJ2xsIGdvIHRocm91Z2ggdGhlIHBhdGNoZXMgYW5kIHJlbW92ZSBhbnl0aGlu
ZyB0aGF0IHNvdW5kcyBsaWtlIGl0Cj4+IG1pZ2h0IG5lZWQgdXNlciBzcGFjZSBjb25maWd1cmF0
aW9uIChpLmUuIG5vdCBwb3dlciB0aGUgVVNCIGJ1cyBvciB0aGUKPj4gbGlrZSkuCj4gdXBzdHJl
YW0gR1BJTyBtYWludGFpbmVycyBwcmVmZXIgZGVkaWNhdGVkIHByb3BlcnRpZXMgaW5zdGVhZCBv
ZiBhIEdQSU8gaG9nLgo+Cj4gc29tZSBVU0IgY29udHJvbGxlciBkcml2ZXJzIHN1cHBvcnQgYSAi
dmJ1cy1zdXBwbHkiIHByb3BlcnR5LCB3aGljaAo+IGNhbiBiZSB1c2VkIHRvZ2V0aGVyIHdpdGgg
YSBHUElPIHJlZ3VsYXRvcgo+IGluIGNhc2Ugb2YgdGhlIFZCVVMgc3VwcGx5IGl0IG1lYW5zIHRo
ZSBHUElPIHdpbGwgYmUgdHVybmVkIG9mZiBpZiB0aGUKPiBVU0IgcG9ydCBpcyAiZGlzYWJsZWQi
IChmb3IgZXhhbXBsZSBieSB1bmxvYWRpbmcgdGhlIGtlcm5lbCBVU0IKPiBjb250cm9sbGVyIGRy
aXZlcikuCj4KPiBJJ20gbm90IHNheWluZyB0aGF0IHlvdSBoYXZlIHRvIHN3aXRjaCBvdmVyIHRv
IHNvbWV0aGluZyBvdGhlciB0aGFuIEdQSU8gaG9ncy4KPiBzd2l0Y2hpbmcgdG8gYW4gdXBzdHJl
YW0gc29sdXRpb24gaXMgYSBnb29kIHN0YXJ0aW5nIHBvaW50IQo+IGp1c3QgYmUgYXdhcmUgdGhh
dCB0aGlzIG1heSBub3QgYmUgdGhlIGZpbmFsIHNvbHV0aW9uCgp0aGlzIGlzIHVuZGVyc3Rvb2Qu
IGdwaW8taG9nIGlzIG9ubHkgdGhlIHNlY29uZCBiZXN0IHNvbHV0aW9uLCB3aGVyZQpncGlvLWV4
cG9ydCBpcyBvbmx5IHRoZSB0aGlyZCBiZXN0IHNvbHV0aW9uIGZvciB0aGUgZ2VuZXJhbCBjYXNl
IGJ1dCBpbgpzb21lIGNhc2VzIGF0IHRoZSBtb21lbnQgdGhlIG9ubHkgcmVhc29uYWJsZSBvbmUu
CgoKPgo+PiBJcyBhbnlvbmUgd29ya2luZyBvbiBjb252ZXJ0aW5nIHRoZSB1c2UtY2FzZXMgd2hp
Y2ggcmVxdWlyZSB1c2VyIHNwYWNlCj4+IHN3aXRjaGluZyB0byBsaWJncGlvZCBvciBhbnkgb3Ro
ZXIgc29sdXRpb24/Cj4gaG93IGRvIHlvdSBpZGVudGlmeSB0aGUgInVzZS1jYXNlcyB3aGljaCBy
ZXF1aXJlIHVzZSBzcGFjZSBzd2l0Y2hpbmciPwoKSSBiZWxpZXZlIHRoaXMgZGlzY3Vzc2lvbiBo
YXMgaGFwcGVuZWQgYWxyZWFkeSwgZS5nLiBoZXJlOgoKaHR0cHM6Ly9naXRodWIuY29tL29wZW53
cnQvb3BlbndydC9wdWxsLzEzNjYKCmFuZCBJIGRvbid0IHRoaW5rIHlvdSBuZWVkIGEgZmluYWwg
YW5zd2VyIHRvIHRoaXMgcXVlc3Rpb24gaW4gb3JkZXIgdG8Kc3RhcnQgbWlncmF0aW5nIHRvIGdw
aW9faG9nIHdoZXJlIGl0IGlzIGVhc2lseSBwb3NzaWJsZS4KCkBFbnJpY286IEl0IGlzIGNsZWFy
IHRoYXQgaW4gc29tZSBjYXNlcyBkZWZpbml0ZWx5IHdlIG5lZWQgdG8gaGF2ZSBhCnBvc3NpYmls
aXR5IHRvIG1hbmlwdWxhdGUgZ3Bpb3MgZnJvbSB1c2VyLXNwYWNlLgoKCkNoZWVycwoKwqDCoCBC
aXJnZXIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
