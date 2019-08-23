Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D425D9AC3E
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 11:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V5Gn5MvP9M2uGn3KT0lMhdT6nRTXii2FzGASNyqmkNg=; b=JJ8I5ckYNVZFId
	CjfBguV60QCLg0gwhxNErxcXdT1P+8QBm73QvQ/XDtPf2J5h3joSKYGLykPx5qKR9KUC3C+ChUwfE
	msbZZOIuLzyx/xxXJykBFJF9YuT/HaQImYheeRor6doHb2x9+aeI5gXJgBaBr2WOCuurxA9dXZR6i
	o0z/hg9/MiwbA3uaaZjWlt9D9qu2mGRI4x8NjiG5PnuVKQNC2fcyLGPSU2k8cmChPZs7z9jpQECLo
	hEDbc/I3jC5jL+IhPoyq7dyLs/oklT0RNj2Guc8noC7eEridh7UAQIgyoNI3+S5dTsMyfGAKfDT9i
	JoThzDX+Rjnqa3EKSWHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16JT-0003aj-T9; Fri, 23 Aug 2019 09:56:55 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16JH-0003T7-8D
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 09:56:44 +0000
Received: from p4fcf952c.dip0.t-ipconnect.de ([79.207.149.44]
 helo=[192.168.2.103]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1i16JD-00043Y-Qt; Fri, 23 Aug 2019 11:56:39 +0200
To: openwrt-devel@lists.openwrt.org
References: <3f82a09f-916b-3ba0-c595-b1d5fc7226cc@birger-koblitz.de>
 <CADQ6-wscaDh7H84CrkpXbW=HfHSLtxvjSERzLf-GjpCBq7nbZA@mail.gmail.com>
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
Message-ID: <0ffbe647-e111-e405-e949-062a3b2bb981@birger-koblitz.de>
Date: Fri, 23 Aug 2019 11:56:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CADQ6-wscaDh7H84CrkpXbW=HfHSLtxvjSERzLf-GjpCBq7nbZA@mail.gmail.com>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1566554203;
 b8a0a63c; 
X-HE-SMSGID: 1i16JD-00043Y-Qt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_025643_439794_DAB422EF 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add Asus RT-AC85P
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

SGksCgpPbiAyMy4wOC4xOSAxMTowNCwgR8OhYm9yIFZhcmdhIHdyb3RlOgo+IEhpIQo+Cj4gQWx0
aG91Z2ggaXQgbG9va3MgbGlrZSB0aGUgQXN1cyBSVC1BQzg1UCBhbmQgdGhlIEFzdXMgUlQtQUM2
NVAgbW9kZWxzCj4gYXJlIGlkZW50aWNhbCwgYnV0IEkgaGF2ZSBzZXBhcmF0ZWQgdGhlbSBpbnRv
IHR3byBkdHMgYW5kIGhhdmUKPiBpbnRyb2R1Y2VkIHRoZSBIVyB2ZXJzaW9uIGludG8gdGhlIG5h
bWVzIChmb3IgdGhlIG5ldyB2ZXJzaW9ucyBpbiB0aGUKPiBmdXR1cmUpLgoKQXJlIHlvdSBzdXJl
IHRoYXQgaXMgbmVjZXNzYXJ5PyBBRkFJSyB0aGVyZSBhcmUgbm8gZGlmZmVyZW50IHZlcnNpb25z
IG9mCnRoZSByb3V0ZXJzIGFyb3VuZCBhbmQgQXN1cyBzZWVtcyB0byBoYXZlIGEgcG9saWN5IG9m
IGNvbnN0YW50bHkKY2h1cm5pbmcgb3V0IG5ldyByb3V0ZXIgbW9kZWxzIHdpdGhvdXQgdXBncmFk
aW5nIGV4aXN0aW5nIHJvdXRlcnMgdG8gbmV3CnJldmlzaW9ucy4KCgo+Cj4gSSBoYXZlIGFuIGFs
dGVybmF0aXZlIGluc3RhbGxhdGlvbiBtZXRob2QgdmlhIFNTSDoKPgo+IE5vdGU6IFRoZSB1c2Vy
L3Bhc3N3b3JkIGZvciBTU0ggaXMgaWRlbnRpY2FsIHdpdGggdGhlIG9uZSB1c2VkIGluIHRoZQo+
IFdlYi1pbnRlcmZhY2UuCj4KPiAxLiBDb21wbGV0ZSB0aGUgaW5pdGlhbCBzZXR1cCB3aXphcmQu
Cj4gMi4gQWN0aXZhdGUgU1NIIHVuZGVyICJBZG1pbmlzdHJhdGlvbiIgLT4gIlN5c3RlbSIuCj4g
My4gVHJhbnNmZXIgdGhlIE9wZW5XcnQgZmFjdG9yeSBpbWFnZSB2aWEgc2NwOgo+IMKgPiBzY3Ag
b3BlbndydC1yYW1pcHMtbXQ3NjIxLWFzdXNfcnQtYWM2NXAtcjAxLXNxdWFzaGZzLWZhY3Rvcnku
YmluCj4gYWRtaW5AMTkyLjE2OC41MC4xOi90bXAKPiA0LiBDb25uZWN0IHZpYSBTU0ggdG8gdGhl
IHJvdXRlci4KPiDCoD4gc3NoIGFkbWluQDE5Mi4xNjguNTAuMSA8bWFpbHRvOmFkbWluQDE5Mi4x
NjguNTAuMT4KPiA1LiBXcml0ZSB0aGUgT3BlbldydCBpbWFnZSB0byBmbGFzaC4KPiDCoD4gbXRk
LXdyaXRlIC1pCj4gL3RtcC9vcGVud3J0LXJhbWlwcy1tdDc2MjEtYXN1c19ydC1hYzY1cC1yMDEt
c3F1YXNoZnMtZmFjdG9yeS5iaW4gLWQgbGludXgKPiA2LiBSZWJvb3QgdGhlIHJvdXRlcgo+IMKg
PiByZWJvb3QKPgo+IEFub3RoZXIgdGhpbmc6IEkgZG9uJ3Qga25vdywgaWYgaXQncyBnb29kIG1l
dGhvZCB0byByZXBsYWNlIHRoZSBzZWNvbmQKPiBmaXJtd2FyZSBwYXJ0aXRpb24gd2l0aCBPcGVu
V3J0IGltYWdlIGR1cmluZyBzeXN1cGdyYWRlLiBXaGVuIHdlIGRvbid0Cj4gZG8gdGhhdCwgdGhh
biB3ZSBoYXZlIGFsd2F5cyBhIGZhY3RvcnkgZmlybXdhcmUgb24gdGhlIHNlY29uZGFyeQo+IGZp
cm13YXJlIHBhcnRpdGlvbiwgc28gdGhlIGJhY2sgdG8gdGhlIGZhY3RvcnkgZmlybXdhcmUgd291
bGQgYmUgbXVjaAo+IGVhc2llci4KCkkgZG9uJ3QgaGF2ZSBhIHN0cm9uZyBvcGluaW9uIG9uIHRo
aXMuIEJvdGggd2F5cyBoYXZlIHRoZWlyIGFkdmFudGFnZXMuCklmIGR1cmluZyBzeXN1cGdyYWRl
IGJvdGggY29waWVzIG9mIHRoZSBGVyBhcmUgd3JpdHRlbiwgdGhlbiB0aGlzIGlzCmNvbnNpc3Rl
bnQgd2l0aCB0aGUgb3JpZ2luYWwgc29mdHdhcmUncyBiZWhhdmlvciBhbmQgYWRkaXRpb25hbGx5
LCB0aGUKb3V0Y29tZSBpcyBpbmRlcGVuZGVudCBvZiB0aGUgT3BlbldSVCBpbml0aWFsIGluc3Rh
bGxhdGlvbiBtZXRob2QuIFdoZW4KdXNpbmcgdGZ0cCAob3IgdGhlIFdlYi1HVUkgc2hvdWxkIHNv
bWVvbmUgZmlndXJlIG91dCB0aGUgZXhhY3QgZm9ybWF0KQpib3RoIGNvcGllcyBhcmUgd3JpdHRl
biwgb25seSBzc2ggYW5kIHNlcmlhbCBwb3J0IGFsbG93IHRvIGluc3RhbGwgb25seQpvbmUgY29w
eS4gTm90IGNvcHlpbmcgb3ZlciB0aGUgcHJldmlvdXMgT3BlbldSVCBpbWFnZSB0byB0aGUgc2Vj
b25kCnBhcnRpdGlvbiBkdXJpbmcgc3lzdXBncmFkZSBhbGxvd3MgaGF2aW5nIGEgY29weSBvZiB0
aGUgZmFjdG9yeSBmaXJtd2FyZQphcm91bmQgKGJ1dCB3aGljaCBuZWVkcyB0byBiZSB3cml0dGVu
IHRvIHRoZSBmaXJzdCBwYXJ0aXRpb24gYWdhaW4gdG8gYmUKYm9vdGVkKS4KCkNoZWVycywKCsKg
IEJpcmdlcgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
