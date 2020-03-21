Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 298C018DF45
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 10:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZ1fOj8WcH9iHSt5DroqSmzuk65jFSpT3nhcO5g6/2s=; b=Jt5Ly8vXF4w++4
	IWUxWOhL4W9LphYibSfs245PnzUC2AA1UKj947Og1gDtjadzY+1BWatkVKrMjkgEtg4H139LtAZ8l
	CpQy1/0WWFzVm0l2YHSl9GQTtWAZrMW3PszDVztnzwWeWrriuOSNk4Vopf57Uf2DYmMkgY6GzPsLS
	tg9Qz3mcAE87vU2dFlDZJslBxiXbFjaOZVDBu/zZFUqFwX6ivyl+ITZiKMVHeCUp81tHxgLva0PXP
	a703LENabJUOI5QbmnIHc+rmAvxnIldpozAvbGNDpqkqiBISK0VT6G9yiGaRB7YGkdaGzqpECJJAY
	ooq3darUWgQKFdhpTwJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFank-0005tv-5M; Sat, 21 Mar 2020 09:52:20 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFanZ-0005tL-0B
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 09:52:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584784314;
 bh=cXnib3Pk30WXAdRmYguiTJQiex02Tes5XDbYJWL/DkI=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=JmGP+dUvHlo4Tjh1vSo5p3jJ2fQiOfAG2Uk4Zszc95qzdIy7Fz+xA4GCLkUgWkruo
 pI0EJqGHGhdH76lBhumxXkIoxQu2GDOTrCyhafxmWXApf3mhpIc7HqVeoJBhvGv/1d
 zGUkoLoeF5AW2SQFIDLuRWvaxnUxvH47mvKMLP/Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.67.54]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MAfUe-1j8y0o1hQu-00B8SQ; Sat, 21
 Mar 2020 10:51:54 +0100
Date: Sat, 21 Mar 2020 10:51:52 +0100
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Message-ID: <20200321095152.GA20928@darth.lan>
Mail-Followup-To: Kevin 'ldir' Darbyshire-Bryant
 <ldir@darbyshire-bryant.me.uk>, 
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Stijn Tintel <stijn@linux-ipv6.be>
References: <20200321091353.GA29430@darth.lan>
 <A831410E-2F5C-4C4D-8C38-D14C12A0FAE2@darbyshire-bryant.me.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A831410E-2F5C-4C4D-8C38-D14C12A0FAE2@darbyshire-bryant.me.uk>
X-Provags-ID: V03:K1:O44LvXO6LcxEMKeiReH+fYJNczkX/agdfFH8PW/3oYjaQJsHvmU
 CtplFOjtvQc3e4G4RJz1cnxEoQgF4gxZJaB72PEnV0wUi16sZhGNnE/QV536AUTDcl42cGu
 50w0Rt/QTQ4WADnj+0U/apfrgHVAnJm769GR9eT4WnYirWcHFQORJdsHyo4SKU8qbKqNHtH
 120qkSP+Ldn/jM0sDoZLw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RPeMaSza35w=:koXpFqGG88+Cw+luTZte7E
 HGhioqu5o/W2ZvtR13HhAhXJJZOowPeIJnHFznd3N8HPrg6wZ5V2fe6aKonwdDAyvWqXr4Su+
 lRlIeGoNjEc627JimQqs7jVmLVieZxew6SSdBqXQEgPgB6RzMUNVTqNxKwDGkpmyfM/8dAv4u
 EaqvLtglqGklOrmTcY0sT/D+NsOFqgCAddxgC+B9UsgZrr68DbFvrORfAQfVZlRZfGO13ETSZ
 iQSBUjw/pJpIDPtOmhyLSEJEKyYPw2BirTv5/ypGMtVfdLf3lVHwGwbIhTuAFpci+//8bAin4
 K8bfJrWOZ79V++gGu9vT9cmuDJwl+0qDo1l5TO74k/juSwsR+Ve0to1Sk4D6ZL8WqgZSHSx0p
 WPSSOS1AQiCpRzU0J5kF+UFDvev1V9Oito/jvZpMoRpJ2l4ohgbw1MjTPRPeOToWzHYV3xD4+
 YDx+OHVE8KwvPmWlT0pqd+YVJe/aZFxtqszhwQAmZpKt67T4ijWqp2CfC84uE0/GrUNKblwBe
 BezgNgZNS9lkN59WsEUw9Pil0f0vT6SqLhD+16ZhG8bZ2T5yih9mc6cQFi6oWFbcjUNAvNJlE
 dQpNiD94UQVCI98ASy60haqXDXoR/Gwg+oc6g8PVufWq+sTzrjfISBhFO3k248stsTQ+hJlUO
 7rrSFAUwJLGBzaPz+BbvdtfIjkA10n3Ou+v2zNNMDjQhjxtcE6B+fDZ2Kz97h6WwgiDrcu5s6
 36pFQirpe/WvVtICHEE2v9OxbzHIfuK25wwoz9RdabF4nGFaACLTJo5TUAX47nWksaK5f57N2
 zZhulJIm+sF5yig31cxtOMF3IGzs+yC3lhrZPU3vosngUOvd4kfmmV74V5yeVuDW2H1JesP08
 TWRVZLlSLbjyHvwVumf9HQYbbt/tPxuLLWdDty7ktX6KtOaV0QLSiG05A0Akf1YiTQnfA/MfI
 vPXvw6XFKutFPaBbj9vpJdiZZwQXg4lB1s0IOb10DtHnDKwggZpOfpYajjZy8RNrMo3iaBE5g
 O5bwAfoXYSvQ8WIAmV2wVrAkLZJncDvb54IYMVELZqXn01sn+1YyE6OyoLKKuK8Yztj9ak0LP
 TTAE7T4Xfrg9syp2WOE0SEJQfBH74cvb9pGs1ZGh4Rp06KigcYY6sc2UehNKPX5y6czGHi5Fo
 Cwa2jH0pGZuHpdEK3L/nvDmB19bIybqoLtdDip0fhU4i2oVngXcS3KAs5KsKeXVI1cZB39pMm
 +RxMprh4QU67Pr1N8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_025209_334691_559B77C9 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sebastian_ml[at]gmx.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] Strongswan compile fails since connmark related
 commits in OpenWrt
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU2F0LCBNYXIgMjEsIDIwMjAgYXQgMDk6Mzg6MjdBTSArMDAwMCwgS2V2aW4gJ2xkaXInIERh
cmJ5c2hpcmUtQnJ5YW50Cndyb3RlOgo+IEhpIFNlYmFzdGlhbiwKPgo+IEnigJl2ZSBqdXN0IGRv
bmUgYSBmaXggZm9yIHRoaXMuICBKdXN0IHdhaXRpbmcgZm9yIGEgYnVpbGQgdG8gY29tcGxldGUK
PiBiZWZvcmUgSSBwdXNoIGl0Lgo+Cj4gSW4gZXNzZW5jZSwgdGhlIGtlcm5lbCBoYWNrIHBhdGNo
ZXMgZm9yIDQuMTkgd2VyZSBjb3BpZWQgdG8gNS40LiAgVGhlCj4gcGF0Y2ggaW4gNC4xOSB3YXMg
Zml4ZWQgYnV0IHRoZSBvbmUgaW4gNS40IGdvdCBmb3Jnb3R0ZW4gYWJvdXQsIHNpbmNlCj4gbm8g
b25lIHdhcyBhY3R1YWxseSBidWlsZGluZyB3aXRoIGEgNS40IGtlcm5lbCB0aWxsIG5vdy4KClRo
YW5rcyBmb3IgbG9va2luZyBpbnRvIHRoaXMhCgo+IFdoYXQgSSByZWFsbHkgZG9u4oCZdCB1bmRl
cnN0YW5kIGFzIHRoZSBhdXRob3Igb2YgdGhlIHBhdGNoIGlzIHF1aXRlIGhvdwo+IHRoZSBvbGQg
aGVhZGVyIHN5bnRheCBzdGlsbCBleGlzdHMsIHNpbmNlIHRoZSB2ZXJzaW9uIG9mIHBhdGNoZXMg
SQo+IHNlbnQgdXBzdHJlYW0gaGFzIHRoZSBmaXjigKYuYW5kIGluIHRoZW9yeSBJIGJhY2twb3J0
ZWQgdGhvc2UgdXBkYXRlcyB0bwo+IG9wZW53cnQuCj4KPiBJZiB5b3UgY2Fu4oCZdCB3YWl0IHRo
ZW4gdHdlYWsKPiBoYWNrLTUuNC82NDUtbmV0ZmlsdGVyLWNvbm5tYXJrLWludHJvZHVjZS1zZXQt
ZHNjcG1hcmsucGF0Y2g6CgpObyBuZWVkLCBJIHdhcyBqdXN0IHNlZWluZyB0aGUgZmFpbHVyZXMg
b24gdGhlIGJ1aWxkIGJvdHMgaW4gdGhlIHBhc3QKd2Vla3MgYW5kIHRob3VnaHQgSSBzaG91bGQg
aGlnaGxpZ2h0IHRoZW0uCgpUaGFua3MhCgo+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvZ2Vu
ZXJpYy9oYWNrLTUuNC82NDUtbmV0ZmlsdGVyLWNvbm5tYXJrLWludHJvZHVjZS1zZXQtZHNjcG1h
cmsucGF0Y2ggYi90YXJnZXQvbGludXgvZ2VuZXJpYy9oYWNrLTUuNC82NDUtbmV0ZmlsdGVyLWNv
bm5tYXJrLWludHJvZHVjZS1zZXQtZHNjcG1hcmsucGF0Y2gKPiBpbmRleCBmNWNhMWJlZjZlLi4y
ZDNmZTAxYTc1IDEwMDY0NAo+IC0tLSBhL3RhcmdldC9saW51eC9nZW5lcmljL2hhY2stNS40LzY0
NS1uZXRmaWx0ZXItY29ubm1hcmstaW50cm9kdWNlLXNldC1kc2NwbWFyay5wYXRjaAo+ICsrKyBi
L3RhcmdldC9saW51eC9nZW5lcmljL2hhY2stNS40LzY0NS1uZXRmaWx0ZXItY29ubm1hcmstaW50
cm9kdWNlLXNldC1kc2NwbWFyay5wYXRjaAo+IEBAIC04Nyw4ICs4Nyw4IEBAIFNpZ25lZC1vZmYt
Ynk6IEtldmluIERhcmJ5c2hpcmUtQnJ5YW50IDxsZGlyQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVr
Pgo+ICAgfTsKPgo+ICAgZW51bSB7Cj4gLSsgICAgICBYVF9DT05OTUFSS19WQUxVRSA9IEJJVCgw
KSwKPiAtKyAgICAgIFhUX0NPTk5NQVJLX0RTQ1AgPSBCSVQoMSkKPiArKyAgICAgIFhUX0NPTk5N
QVJLX1ZBTFVFID0gICAgICgxIDw8IDApLAo+ICsrICAgICAgWFRfQ09OTk1BUktfRFNDUCA9ICAg
ICAgKDEgPDwgMSkKPiAgK307Cj4gICsKPiAgK2VudW0gewo+Cj4gQXBvbG9naWVzIGZvciB0aGUg
aW5jb252ZW5pZW5jZS4KPgo+IEtldmluCj4KPiA+IE9uIDIxIE1hciAyMDIwLCBhdCAwOToxMywg
U2ViYXN0aWFuIEtlbXBlciA8c2ViYXN0aWFuX21sQGdteC5uZXQ+IHdyb3RlOgo+ID4KPiA+IEhp
IGFsbCwKPiA+Cj4gPiBzdHJvbmdzd2FuIGZhaWxzIHRvIGNvbXBpbGUgc2luY2UgbWFueSB3ZWVr
czoKPiA+Cj4gPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gL2J1aWxkZXIvc2hhcmVkLXdvcmtkaXIv
YnVpbGQvc2RrL3N0YWdpbmdfZGlyL3Rvb2xjaGFpbi1hYXJjaDY0X2NvcnRleC1hNTNfZ2NjLTgu
NC4wX211c2wvaW5jbHVkZS9saW51eC9uZXRmaWx0ZXIveHRfQ09OTk1BUksuaDo1LAo+ID4gICAg
ICAgICAgICAgICAgIGZyb20gY29ubm1hcmtfbGlzdGVuZXIuYzozMDoKPiA+IC9idWlsZGVyL3No
YXJlZC13b3JrZGlyL2J1aWxkL3Nkay9zdGFnaW5nX2Rpci90b29sY2hhaW4tYWFyY2g2NF9jb3J0
ZXgtYTUzX2djYy04LjQuMF9tdXNsL2luY2x1ZGUvbGludXgvbmV0ZmlsdGVyL3h0X2Nvbm5tYXJr
Lmg6MjM6MjogZXJyb3I6IGVudW1lcmF0b3IgdmFsdWUgZm9yICdYVF9DT05OTUFSS19WQUxVRScg
aXMgbm90IGFuIGludGVnZXIgY29uc3RhbnQKPiA+ICBYVF9DT05OTUFSS19WQUxVRSA9IEJJVCgw
KSwKPiA+ICBefn5+fn5+fn5+fn5+fn5+fgo+ID4gL2J1aWxkZXIvc2hhcmVkLXdvcmtkaXIvYnVp
bGQvc2RrL3N0YWdpbmdfZGlyL3Rvb2xjaGFpbi1hYXJjaDY0X2NvcnRleC1hNTNfZ2NjLTguNC4w
X211c2wvaW5jbHVkZS9saW51eC9uZXRmaWx0ZXIveHRfY29ubm1hcmsuaDoyNToxOiBlcnJvcjog
ZW51bWVyYXRvciB2YWx1ZSBmb3IgJ1hUX0NPTk5NQVJLX0RTQ1AnIGlzIG5vdCBhbiBpbnRlZ2Vy
IGNvbnN0YW50Cj4gPiB9Owo+ID4gXgo+ID4KPiA+IEZ1bGwgbG9nIGV4YW1wbGU6Cj4gPgo+ID4g
aHR0cHM6Ly9kb3dubG9hZHMub3BlbndydC5vcmcvc25hcHNob3RzL2ZhaWxsb2dzL2FhcmNoNjRf
Y29ydGV4LWE1My9wYWNrYWdlcy9zdHJvbmdzd2FuL2NvbXBpbGUudHh0Cj4gPgo+ID4gSSB0aGlu
ayB0aGF0IHRoaXMgYnVpbGQgZmFpbHVyZSBpcyByZWxhdGVkIHRvIG9uZSBvZiB0aGUgZm9sbG93
aW5nIGNvbW1pdHM6Cj4gPgo+ID4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9j
b21taXQvZTQ4MWRmMDdmYTY1OTllMThhMDU3MGFjYjRkYWRhYmM1NjI5OWI3Ygo+ID4gaHR0cHM6
Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9jb21taXQvYTFjZmUwZGNiYjI0MmFiNDQwYWY2
ODAxZTIyM2ViZGU1NDBlZDkwZgo+ID4KPiA+IChwcm9iYWJseSB0aGUgc2Vjb25kIG9uZSkKPiA+
Cj4gPiBNYXliZSBhbnlib2R5IGNhbiB0YWtlIGEgbG9vayBhdCB0aGlzPwo+ID4KPiA+IElmIHlv
dSB3YW50IG1lIHRvIHJhaXNlIGFuIGlzc3VlIGluIEZseXNwcmF5IGxldCBtZSBrbm93Lgo+ID4K
PiA+IEtpbmQgcmVnYXJkcywKPiA+IFNlYgo+Cj4KPiBDaGVlcnMsCj4KPiBLZXZpbiBELUIKPgo+
IGdwZzogMDEyQyBBQ0IyIDI4QzYgQzUzRSA5Nzc1ICA5MTIzIEIzQTIgMzg5QiA5REUyIDMzNEEK
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
