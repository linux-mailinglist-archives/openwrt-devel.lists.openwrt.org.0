Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4C63B75A
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Jun 2019 16:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUchHfH+KwLlMIuNHsJlFc/b4r3sC2nNrqonT8Lk36U=; b=LtIkaN8gFK04Wg
	SFydE44RVxOPntK6TsVhwqWRWLola0zED9kObJpkmZaGxHfAAlSQ9873aAmkiU+Ki25XB8UrPZ9es
	n+ZgXaeQt9S87HoQ55N1icmZg9VnxZY/XBK/FC3WDJV5BTsmlE3350Lgy5Kyt5GI++lESN9rthn51
	DtOAxU+CfWucIIBGpscJ33b65Qmu4QJ1TUTqIDCHMVA026uFULpH42ail5PnXFisVTI6OgJwDvzVk
	b7YtZOVn/UXAt+4Icno2WkG2mQsmtkPelyX3s82aPclPbRruWu5MIs10S+CB6b00ucSZjl3Rx6tUn
	ddtPA7bNBry1eYGFrpLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haLIc-0001Rp-Sd; Mon, 10 Jun 2019 14:29:26 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haLIG-0001PG-Ni
 for openwrt-devel@lists.openwrt.org; Mon, 10 Jun 2019 14:29:10 +0000
Received: (wp-smtpd smtp.tlen.pl 23681 invoked from network);
 10 Jun 2019 16:29:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1560176940; bh=fvFjmv0tu7sMtPK+Zokshs7zm1Mtja/KM25fJJ61UjI=;
 h=Subject:To:Cc:From;
 b=pnOubj1YxXIuO7Ph9cNXpmXbkcLdQMGtCMKM3RHDnFl6Z401BpEaPhrcDXnqYRDWi
 s0R4x45CE5SyQqq48M2qzSP9HpFlJTCkt4ZVjW0MBmPJOrKKMsat3NZYXwi4kQsP3n
 /+JMHmilHls4mYoVnFZvzscctXZIsrH08Uv6ShlU=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <marek.behun@nic.cz>; 10 Jun 2019 16:29:00 +0200
To: Jonas Gorski <jonas.gorski@gmail.com>
References: <20190605143124.7598-1-tomek_n@o2.pl>
 <20190605143124.7598-2-tomek_n@o2.pl>
 <CAOiHx=k3kQ-agOM8DSWr6q+-84H5mhN-CwUGKStK=uu16Z04XA@mail.gmail.com>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <45c49210-e8cf-321d-2734-1c4408e4f58a@o2.pl>
Date: Mon, 10 Jun 2019 16:28:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAOiHx=k3kQ-agOM8DSWr6q+-84H5mhN-CwUGKStK=uu16Z04XA@mail.gmail.com>
Content-Language: en-US
X-WP-MailID: 98e35bbf363def585aed6283c5cc4428
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000003 [cRCV]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_072905_555418_14407B2F 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] kernel: package module for SafeXcel
 crypto engine
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Marek_Beh=c3=ban?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgIEpvbmFzLgoKVyBkbml1IDA1LjA2LjIwMTkgb8KgMTc6NDUsIEpvbmFzIEdvcnNraSBwaXN6
ZToKPiBPbiBXZWQsIDUgSnVuIDIwMTkgYXQgMTY6MzIsIFRvbWFzeiBNYWNpZWogTm93YWsgPHRv
bWVrX25AbzIucGw+IHdyb3RlOgo+Pgo+PiBTdXBwb3J0cyBFSVA5NyBhbmQgRUlQMTk3IGZvdW5k
IG9uIEFybWFkYSAzN3h4LCA3ayBhbmQgOGsgU29Dcy4KPj4gVW5mb3J0dW5hdGVseSBmaXJtd2Fy
ZSBmb3IgRUlQMTk3IGlzIG5vdCBlYXNpbHkgb2J0YWluYWJsZSwgdGhlcmVmb3JlCj4+IHRvIG5v
dCBjYXVzZSBsb3Qgb2YgdXNlciByZXF1ZXN0cyBkaXJlY3RlZCBhdCBPcGVuV3J0LCBwYWNrYWdl
IGl0IGFzCj4+IG1vZHVsZSB3aXRoIGV4cGxhbmF0aW9uIHdoZXJlIHRvIG9idGFpbiB0aGUgZmly
bXdhcmUuCj4+Cj4+IENjOiBNYXJlayBCZWjDum4gPG1hcmVrLmJlaHVuQG5pYy5jej4KPj4gU2ln
bmVkLW9mZi1ieTogVG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4KPj4gLS0tCj4+
ICBwYWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL2NyeXB0by5tayB8IDI4ICsrKysrKysrKysr
KysrKysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9jcnlwdG8ubWsgYi9w
YWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL2NyeXB0by5tawo+PiBpbmRleCA5Y2FiMDRjNmVk
Li5lZDJhYjZhZWQ3IDEwMDY0NAo+PiAtLS0gYS9wYWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVz
L2NyeXB0by5tawo+PiArKysgYi9wYWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL2NyeXB0by5t
awo+PiBAQCAtMzUwLDYgKzM1MCwzNCBAQCBlbmRlZgo+PiAgJChldmFsICQoY2FsbCBLZXJuZWxQ
YWNrYWdlLGNyeXB0by1ody1wYWRsb2NrKSkKPj4KPj4KPj4gK2RlZmluZSBLZXJuZWxQYWNrYWdl
L2NyeXB0by1ody1zYWZleGNlbAo+PiArICBUSVRMRTo9IE1WRUJVIFNhZmVYY2VsIENyeXB0byBF
bmdpbmUgbW9kdWxlCj4+ICsgIERFUEVORFM6PUBMSU5VWF80XzE5IEAoVEFSR0VUX212ZWJ1X2Nv
cnRleGE1M3x8VEFSR0VUX212ZWJ1X2NvcnRleGE3MikgXAo+IAo+IEFzc3VtaW5nIHRoaXMgaXMg
aXNuJ3QgZXhjbHVzaXZlIHRvIDQuMTksIGEgQCFMSU5VWF80XzE0IHdvdWxkIGJlIG1vcmUKPiBm
dXR1cmUgcHJvb2YKCkdvb2QgcG9pbnQuCgo+PiArICAgICAgICtrbW9kLWNyeXB0by1hdXRoZW5j
ICtrbW9kLWNyeXB0by1tZDUKPj4gKyAgS0NPTkZJRzo9IFwKPj4gKyAgICAgICBDT05GSUdfQ1JZ
UFRPX0FFUz15IFwKPj4gKyAgICAgICBDT05GSUdfQ1JZUFRPX0JMS0NJUEhFUj15IFwKPiAKPiBU
aGVzZSB0d28gYXJlIGFscmVhZHkgc2V0IHRvID15IGJ5IHRoZSBkZWZhdWx0IGNvbmZpZywgbm8g
bmVlZCB0bwo+IHNwZWNpZnkgdGhlbSBoZXJlLgoKVGhhbmtzLCBkaWRuJ3QgY2hlY2sgZ2VuZXJp
YyBjb25maWcuCgo+PiArICAgICAgIENPTkZJR19DUllQVE9fREVWX1NBRkVYQ0VMIFwKPj4gKyAg
ICAgICBDT05GSUdfQ1JZUFRPX0hNQUM9eSBcCj4gCj4gK2ttb2QtY3J5cHRvLWhtYWMKPiAKPj4g
KyAgICAgICBDT05GSUdfQ1JZUFRPX0hXPXkgXAo+PiArICAgICAgIENPTkZJR19DUllQVE9fU0hB
MjU2PXkgXAo+IAo+ICtrbW9kLWNyeXB0by1zaGEyNTYKPiAKPj4gKyAgICAgICBDT05GSUdfQ1JZ
UFRPX1NIQTUxMj15Cj4gCj4gK2ttb2QtY3J5cHRvLXNoYTUxMgoKVGhhbmtzLCB3aWxsIGNoZWNr
IGFnYWluIHRoZSBkZXBlbmRlbmNpZXMuCgo+PiArICBGSUxFUzo9JChMSU5VWF9ESVIpL2RyaXZl
cnMvY3J5cHRvL2luc2lkZS1zZWN1cmUvY3J5cHRvX3NhZmV4Y2VsLmtvCj4+ICsgIEFVVE9MT0FE
Oj0kKGNhbGwgQXV0b0xvYWQsOTAsY3J5cHRvX3NhZmV4Y2VsKQo+PiArICAkKGNhbGwgQWRkRGVw
ZW5kcy9jcnlwdG8pCj4+ICtlbmRlZgo+PiArCj4+ICtkZWZpbmUgS2VybmVsUGFja2FnZS9jcnlw
dG8taHctc2FmZXhjZWwvZGVzY3JpcHRpb24KPj4gK01WRUJVJ3MgRUlQOTcgYW5kIEVJUDE5NyBD
cnlwdG9ncmFwaGljIEVuZ2luZSBkcml2ZXIgZGVzaWduZWQgYnkKPj4gK0luc2lkZSBTZWN1cmUu
IFRoaXMgaXMgZm91bmQgb24gTWFydmVsbCBBcm1hZGEgMzd4eC83ay84ayBTb0NzLgo+PiArCj4+
ICtQYXJ0aWN1cmFsIHZlcnNpb24gb2YgdGhlc2UgSVAgKEVJUDE5N0IgYW5kIEVJUDE5N0QpIHJl
cXVpcmUgZmlybXdhcmUuCj4gCj4gcy9QYXJ0aWN1cmFsL1BhcnRpY3VsYXIvCj4gCj4+ICtJdCBj
YW4gYmUgb2J0YWluZWQgYXQgaHR0cHM6Ly9leHRyYW5ldC5tYXJ2ZWxsLmNvbS4KPiAKPiBZb3Ug
bmVlZCBhbiBOREEgdG8gb2J0YWluIGl0LCB3aGljaCBpc24ndCBzb21ldGhpbmcgcG9zc2libGUg
Zm9yIHRoZQo+IGF2ZXJhZ2UgZW5kIHVzZXIuIFRoZSBkZXNjcmlwdGlvbiBzaG91bGQgbWFrZSBp
dCBjbGVhciB0aGF0IHRoaXMgaXNuJ3QKPiBhIHNpbXBsZSAiZG93bmxvYWQgaGVyZSIgc2l0dWF0
aW9uLgoKSGFkIHRoYXQgaW4gbXkgcHJldmlvdXMgbG9jYWwgdmVyc2lvbiBidXQgSSBkZWNpZGVk
IHRvIHNpbXBsaWZ5IGl0LCBzaW5jZSB2aXNpdGluZwp0aGUgVVJMIHdpbGwgc2hvdyBsb2dpbiB3
YWxsIHdpdGggdGV4dCBleHBsYWluaW5nIHdobyBjYW4gb2J0YWluIHRoZSBmaXJtd2FyZS4gV2ls
bAp1c2UgbW9yZSBlbGFib3JhdGUgdmVyc2lvbi4gRG9uJ3Qga25vdyBob3cgaXQgaXMgd2l0aCBk
ZXZpY2VzIHNvbGQgYnkgU29saWRSdW4KKE1BQ0NISUFUT2JpbiBhbmQgQ2xlYXJmb2cgR1QgOEsp
LCBtYXliZSBpdCdzIGVhc2llciBvYnRhaW5pbmcgaXQgdGhyb3VnaCB0aGVtPwoKPiBBcmUgdGhl
cmUgYW55IGJvYXJkcyBzdXBwb3J0ZWQgYnkKPiBPcGVuV3J0IHVzYWJsZSB3aXRob3V0IHRoZSBm
aXJtd2FyZT8KCk9ubHkgYm9hcmRzIHVzaW5nIEFybWFkYSAzN1hYIFNvQyB3aGljaCBoYXMgRUlQ
OTcgKGNvcnRleGE1MyBzdWJ0YXJnZXQpLgoKPiAKPiAKPiBSZWdhcmRzCj4gSm9uYXMKPiAKClJl
Z2FyZHMKCi0tIApUTU4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
