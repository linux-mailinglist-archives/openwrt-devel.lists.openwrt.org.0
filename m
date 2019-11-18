Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59132FFC85
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 01:43:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npq9w7K8MPz7nJxzLKZCKf5mTlJZx7dUoDj5m3dFgWc=; b=I8dFxcmbTQp8Ix
	H1pfDUuvsOHMSHS2kXlgYbqZJdCc7V2k7jiZQIUp0t3iVzkhcu1ZISZAwtcApDlymDP99IQ3P5d/K
	Vf620s2CbIEcs07t2f87wm9RvmyOYhCLPSBljdsDFhNghsuZwlVyHbHvnF9Pk13eW2VhmvpQ4keRV
	PB+6qQ+t+B0nKagFVq/xJpA6uvqx8wp4cFBwGrNNhj+6i054KeMsFHrXEFT4BupUbCJFOQ3Q7BlHc
	0RTWpXZanee4sKWWiGbYaezXe3WWvihlV9E35ZSXPZUOKmRX7z2lNzhgHvBYTQfIYe45Ht53AE5WE
	hSrGXcJ61/b/cua17z/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWV8H-0000ay-42; Mon, 18 Nov 2019 00:43:09 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWV89-0000Zu-OT
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 00:43:03 +0000
Received: by mail-il1-x143.google.com with SMTP id z12so14398397ilp.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 Nov 2019 16:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MhosTuuAg4XY5XY6e3ktwmTj0T6udcUViZ3ZP3Fmp5E=;
 b=g6Q+Jg9VtO17w9Z/iYbM6sOn4irlHmqYZh1TvtPRcKr1bW2NhyzJaSYYMZHCbLuOq1
 EddE7Twzvf6piWDy4QKGK7TIV+72WtS+lghPgxGPJUKEuaDpe3BeWWXqi+rg40pvw4+w
 j0hNgnbYhpMuMuL9S/zLky6Csk7AkBF4RcbTdRvnd1Hr2wpMBY7haf+LMRHHEeyhFbkB
 ClRn2WcIyt1PH7aidJhDu09LfDNoWMjOHlddL06IDb8dbpVMVhazz5N+U53kmKqo/aK6
 mUBewdSeuERrMhyuzUtCuncLdv7POS9dv6COF/EhUVKWjZtBqEZ14+QbDR/U3b1mCl7v
 uD3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MhosTuuAg4XY5XY6e3ktwmTj0T6udcUViZ3ZP3Fmp5E=;
 b=aOneDVfdGlIn7pExDN49c4wPxamP0Rf0Rux7frlLecFDgyk5xhevdbveNjs+iol00N
 zt31pWJGXMHWL+g8qmhRsMIpHdltMXGQ0Kr4jn3LQXxzVwqZR4w7iEdczuPzRd80p7DZ
 GoSuZ5rYVzmR1KtYCQcCMPvKXHbnOpu8UkbrEyeJkKE2KFFfIWEzl8kAFevbOMpcOdbb
 rNhfdN8U2LO2pRZ1uCeiJikzb1cHV84TtI1+Yh++QJJgsJgYO8/iKVCPiJYznsLpTQJm
 K2TIENk1DgSejsBTYXjD749tpLbuy03BAqKUwctuq5+hljIUmqrn7QT1NYsAghzMNcwI
 P1NA==
X-Gm-Message-State: APjAAAWV1r7rooy1wX7cqoIy0NBRQvSEVbM00+mA2HyI1YBvlRmbSz7p
 12QwQxU4sS9YHjJ9/dGNoPVWajYYlmRHNlGgcvY=
X-Google-Smtp-Source: APXvYqwFlMWUYoibYO2nRvMngoFSAXAY3PMNzHcY7C1M6vLPhdu5LNFrtrLQNt7+o5BHfOjxPlSfR+3lBDa6ppKcE8A=
X-Received: by 2002:a05:6e02:542:: with SMTP id
 i2mr12950040ils.295.1574037779905; 
 Sun, 17 Nov 2019 16:42:59 -0800 (PST)
MIME-Version: 1.0
References: <20191117225937.5599-1-hauke@hauke-m.de>
In-Reply-To: <20191117225937.5599-1-hauke@hauke-m.de>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Sun, 17 Nov 2019 16:42:48 -0800
Message-ID: <CAOdf3goesxPQrRy8eeu0ZV1RpOcLaUXyc9iWLyPyrejBXOo3cg@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_164301_818802_58A24432 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] wireless-regdb: Make it build with
 python2
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgSGF1a2UsCgpMZSBkaW0uIDE3IG5vdi4gMjAxOSDDoCAxNTowMCwgSGF1a2UgTWVocnRlbnMg
PGhhdWtlQGhhdWtlLW0uZGU+IGEgw6ljcml0IDoKPgo+IFRoaXMgYmFja3BvcnRzIGEgcGF0Y2gg
dG8gYnVpbGQgaXQgd29yayB3aXRoIHB5dGhvbjIgaW4gYWRkaXRpb24gdG8KPiBweXRob24zLgoK
V2h5IG5vdCBtYWtlIHRoZSBzY3JpcHRzICIvdXNyL2Jpbi9lbnYgcHl0aG9uMyIgYW5kIHJlcXVp
cmUgcHl0aG9uIDMgaW4gMTkuMDcgPwooSSdtIHN0dWJvcm4gYnV0IEkgZG9uJ3QgdW5kZXJzdGFu
ZCB0cnlpbmcgdG8ga2VlcCBweXRob24yIGFsaXZlIG9yCnVzaW5nIHVudmVyc2lvbm5lZCBweXRo
b24pCgpDaGVlcnMKRXRpZW5uZQoKPgo+IFNpZ25lZC1vZmYtYnk6IEhhdWtlIE1laHJ0ZW5zIDxo
YXVrZUBoYXVrZS1tLmRlPgo+IC0tLQo+Cj4gQWZ0ZXIgdGhpcyBwYXRjaCB3ZW50IGludG8gbWFz
dGVyIEkgd291bGQgbGlrZSB0byBiYWNrcG9ydCBhbGwgdGhlCj4gY2hhbmdlcyBmb3Igd2lyZWxl
c3MtcmVnZGIgZnJvbSBtYXN0ZXIgdG8gT3BlbldydCAxOS4wNy4KPiBUaGVyZSBhcmUgYWxyZWFk
eSBzb21lIGNoYW5nZXMgdG8gdGhlIHJlZ3VsYXRvcnkgcnVsZXMgaW4gdGhpcyBkYXRhYmFzZQo+
IGFuZCBJIHdvdWxkIGxpa2UgdG8gc3RheSBjbG9zZSB0byB0aGUgY3VycmVudCBsZWdhbCBndWlk
ZWxpbmVzIGZvcgo+IE9wZW5XcnQgMTkuMDcgYXMgd2VsbC4KPgo+ICAuLi5yZWdkYi1maXgtY29t
cGF0aWJpbGl0eS13aXRoLXB5dGhvbjIucGF0Y2ggfCA1OCArKysrKysrKysrKysrKysrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCA1OCBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBw
YWNrYWdlL2Zpcm13YXJlL3dpcmVsZXNzLXJlZ2RiL3BhdGNoZXMvMDEwLXJlZ2RiLWZpeC1jb21w
YXRpYmlsaXR5LXdpdGgtcHl0aG9uMi5wYXRjaAo+Cj4gZGlmZiAtLWdpdCBhL3BhY2thZ2UvZmly
bXdhcmUvd2lyZWxlc3MtcmVnZGIvcGF0Y2hlcy8wMTAtcmVnZGItZml4LWNvbXBhdGliaWxpdHkt
d2l0aC1weXRob24yLnBhdGNoIGIvcGFja2FnZS9maXJtd2FyZS93aXJlbGVzcy1yZWdkYi9wYXRj
aGVzLzAxMC1yZWdkYi1maXgtY29tcGF0aWJpbGl0eS13aXRoLXB5dGhvbjIucGF0Y2gKPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAuLjgxZjUwZjVkYzAKPiAtLS0gL2Rl
di9udWxsCj4gKysrIGIvcGFja2FnZS9maXJtd2FyZS93aXJlbGVzcy1yZWdkYi9wYXRjaGVzLzAx
MC1yZWdkYi1maXgtY29tcGF0aWJpbGl0eS13aXRoLXB5dGhvbjIucGF0Y2gKPiBAQCAtMCwwICsx
LDU4IEBACj4gK0Zyb20gNjUxZTM5ZGVlODYwNTk5NWI3MzZiNjA1NmM2ZjdkYzVjNWE5Yzk0OCBN
b24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKPiArRnJvbTogSm9oYW5uZXMgQmVyZyA8am9oYW5uZXMu
YmVyZ0BpbnRlbC5jb20+Cj4gK0RhdGU6IFRodSwgMjIgQXVnIDIwMTkgMjE6NDY6MjcgKzAyMDAK
PiArU3ViamVjdDogW1BBVENIXSByZWdkYjogZml4IGNvbXBhdGliaWxpdHkgd2l0aCBweXRob24y
Cj4gKwo+ICtWYXJpb3VzIGNoYW5nZXMgaW4gdGhlIGNvbW1pdCBtZW50aW9uZWQgYmVsb3cgYnJv
a2UKPiArY29tcGF0aWJpbGl0eSB3aXRoIHB5dGhvbjIuIFJlc3RvcmUgaXQgaW4gYSB3YXkgdGhh
dAo+ICttYWtlcyBpdCB3b3J0aCB3aXRoIGJvdGggdmVyc2lvbnMuCj4gKwo+ICtGaXhlczogZjNj
NDk2OWMyNDg1ICgid2lyZWxlc3MtcmVnZGI6IG1ha2Ugc2NyaXB0cyBjb21wYXRpYmxlIHdpdGgg
UHl0aG9uIDMiKQo+ICtTaWduZWQtb2ZmLWJ5OiBKb2hhbm5lcyBCZXJnIDxqb2hhbm5lcy5iZXJn
QGludGVsLmNvbT4KPiArU2lnbmVkLW9mZi1ieTogU2V0aCBGb3JzaGVlIDxzZXRoLmZvcnNoZWVA
Y2Fub25pY2FsLmNvbT4KPiArLS0tCj4gKyBkYjJiaW4ucHkgIHwgMiArLQo+ICsgZGIyZncucHkg
ICB8IDIgKy0KPiArIGRicGFyc2UucHkgfCAzICstLQo+ICsgMyBmaWxlcyBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gKwo+ICstLS0gYS9kYjJiaW4ucHkKPiArKysr
IGIvZGIyYmluLnB5Cj4gK0BAIC0xMTgsNyArMTE4LDcgQEAgcmVnX2NvdW50cnlfcHRyLnNldCgp
Cj4gKyBmb3IgYWxwaGEyIGluIGNvdW50cnluYW1lczoKPiArICAgICBjb2xsID0gY291bnRyaWVz
W2FscGhhMl0KPiArICAgICAjIHN0cnVjdCByZWdkYl9maWxlX3JlZ19jb3VudHJ5Cj4gKy0gICAg
b3V0cHV0LndyaXRlKHN0cnVjdC5wYWNrKCc+QkJ4QkknLCBhbHBoYTJbMF0sIGFscGhhMlsxXSwg
Y29sbC5kZnNfcmVnaW9uLCByZWdfcnVsZXNfY29sbGVjdGlvbnNbY29sbC5wZXJtaXNzaW9uc10p
KQo+ICsrICAgIG91dHB1dC53cml0ZShzdHJ1Y3QucGFjaygnPjJzeEJJJywgYWxwaGEyLCBjb2xs
LmRmc19yZWdpb24sIHJlZ19ydWxlc19jb2xsZWN0aW9uc1tjb2xsLnBlcm1pc3Npb25zXSkpCj4g
Kwo+ICsKPiArIGlmIGxlbihzeXMuYXJndikgPiAzOgo+ICstLS0gYS9kYjJmdy5weQo+ICsrKysg
Yi9kYjJmdy5weQo+ICtAQCAtODUsNyArODUsNyBAQCBjb3VudHJ5bmFtZXMgPSBsaXN0KGNvdW50
cmllcykKPiArIGNvdW50cnluYW1lcy5zb3J0KCkKPiArIGZvciBhbHBoYTIgaW4gY291bnRyeW5h
bWVzOgo+ICsgICAgIGNvbGwgPSBjb3VudHJpZXNbYWxwaGEyXQo+ICstICAgIG91dHB1dC53cml0
ZShzdHJ1Y3QucGFjaygnPkJCJywgYWxwaGEyWzBdLCBhbHBoYTJbMV0pKQo+ICsrICAgIG91dHB1
dC53cml0ZShzdHJ1Y3QucGFjaygnPjJzJywgYWxwaGEyKSkKPiArICAgICBjb3VudHJ5X3B0cnNb
YWxwaGEyXSA9IFBUUihvdXRwdXQpCj4gKyBvdXRwdXQud3JpdGUoYidceDAwJyAqIDQpCj4gKwo+
ICstLS0gYS9kYnBhcnNlLnB5Cj4gKysrKyBiL2RicGFyc2UucHkKPiArQEAgLTEsNiArMSw1IEBA
Cj4gKyAjIS91c3IvYmluL2VudiBweXRob24KPiArCj4gKy1mcm9tIGJ1aWx0aW5zIGltcG9ydCBi
eXRlcwo+ICsgZnJvbSBmdW5jdG9vbHMgaW1wb3J0IHRvdGFsX29yZGVyaW5nCj4gKyBpbXBvcnQg
c3lzLCBtYXRoCj4gKyBmcm9tIG1hdGggaW1wb3J0IGNlaWwsIGxvZwo+ICtAQCAtMzU5LDcgKzM1
OCw3IEBAIGNsYXNzIERCUGFyc2VyKG9iamVjdCk6Cj4gKyAgICAgICAgIGZvciBjbmFtZSBpbiBj
bmFtZXM6Cj4gKyAgICAgICAgICAgICBpZiBsZW4oY25hbWUpICE9IDI6Cj4gKyAgICAgICAgICAg
ICAgICAgc2VsZi5fd2FybigiY291bnRyeSAnJXMnIG5vdCBhbHBoYTIiICUgY25hbWUpCj4gKy0g
ICAgICAgICAgICBjbmFtZSA9IGJ5dGVzKGNuYW1lLCAnYXNjaWknKQo+ICsrICAgICAgICAgICAg
Y25hbWUgPSBjbmFtZS5lbmNvZGUoJ2FzY2lpJykKPiArICAgICAgICAgICAgIGlmIG5vdCBjbmFt
ZSBpbiBzZWxmLl9jb3VudHJpZXM6Cj4gKyAgICAgICAgICAgICAgICAgc2VsZi5fY291bnRyaWVz
W2NuYW1lXSA9IENvdW50cnkoZGZzX3JlZ2lvbiwgY29tbWVudHM9c2VsZi5fY29tbWVudHMpCj4g
KyAgICAgICAgICAgICBzZWxmLl9jdXJyZW50X2NvdW50cmllc1tjbmFtZV0gPSBzZWxmLl9jb3Vu
dHJpZXNbY25hbWVdCj4gLS0KPiAyLjIwLjEKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
