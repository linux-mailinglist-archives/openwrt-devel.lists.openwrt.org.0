Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028371B2F06
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 20:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yub6THQuNPwE/aoUoV8gsbj277uETAA+q75KWrJeSM=; b=Dt8+++UblvMFZk
	fl3yn7UH20TXVNdQjBqfmtLjJZNmpozJI2Oy688JVYR2CUn2eFPm+SuaL24YbBR/ok9YgeLgTc7IP
	HxLw9p0UCSJIN1/uJXoHXhzGkBDjDM9nGplHP6P6btbUaFuTx+ad2HoHL58EC+Ietq9cUTpzEgOMh
	Qjyw7TczLBKVmAYi2u8P1qkwTPoiZxeAO3Ysbr1MyoDt79F8JInJ2t331j1aXNXkFtsB4pshOR8QX
	i9vLMvx80NiF03nIr0mEpyvMrIxzfRLDwRd7URGMqP5nNx13QOWoaLvrk/jcsdIJ1CqF/Jko2U4KN
	qiiJ7aWEElLBbRcfxp1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQxZn-0006jj-5W; Tue, 21 Apr 2020 18:24:55 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQxZd-0006jM-M1
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 18:24:47 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03LIOg8g022474
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Apr 2020 12:24:42 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <016c01d6171d$48f0f650$dad2e2f0$@adrianschmutzler.de>
Date: Tue, 21 Apr 2020 12:24:42 -0600
Message-Id: <D70892B4-02A9-4BFC-BBDD-5805BB5DFC2D@redfish-solutions.com>
References: <20200420133503.18700-1-hacks@slashdirt.org>
 <20200420133503.18700-12-hacks@slashdirt.org>
 <016c01d6171d$48f0f650$dad2e2f0$@adrianschmutzler.de>
To: mail@adrianschmutzler.de
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_112445_834864_C225CB08 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 11/14] package/base-files: caldata:
 allow setting target file
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
Cc: =?utf-8?Q?Thibaut_VAR=C3=88NE?= <hacks@slashdirt.org>,
 openwrt-devel@lists.openwrt.org, koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QWdyZWVkLCBlc3BlY2lhbGx5IGlmIHlvdeKAmXJlIHVzaW5nIOKAnHNldCAtZeKAnSBmb3IgZGVi
dWdnaW5n4oCmCgoKPiBPbiBBcHIgMjAsIDIwMjAsIGF0IDg6MDkgQU0sIG1haWxAYWRyaWFuc2No
bXV0emxlci5kZSB3cm90ZToKPiAKPiBBY2tlZC1ieTogQWRyaWFuIFNjaG11dHpsZXIgPGZyZWlm
dW5rQGFkcmlhbnNjaG11dHpsZXIuZGU+Cj4gCj4gSSBwZXJzb25hbGx5IHByZWZlcgo+IFsgLW4g
IiR2YXIiIF0gfHwgZG8gc29tZXRoaW5nCj4gdG8KPiBbIC16ICIkdmFyIiBdICYmIGRvIHNvbWV0
aGluZwo+IGJ1dCB0aGF0J3MgcHVyZSBtYXR0ZXIgb2YgdGFzdGUgYWdhaW4uCj4gCj4gQmVzdAo+
IAo+IEFkcmlhbgo+IAo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBvcGVu
d3J0LWRldmVsIFttYWlsdG86b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQub3Jn
XQo+PiBPbiBCZWhhbGYgT2YgVGhpYmF1dCBWQVLDiE5FCj4+IFNlbnQ6IE1vbnRhZywgMjAuIEFw
cmlsIDIwMjAgMTU6MzUKPj4gVG86IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4g
Q2M6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz47IGtvZW4udmFuZGVwdXR0
ZUBuY2VudHJpYy5jb20KPj4gU3ViamVjdDogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSCB2MiAxMS8x
NF0gcGFja2FnZS9iYXNlLWZpbGVzOiBjYWxkYXRhOgo+PiBhbGxvdyBzZXR0aW5nIHRhcmdldCBm
aWxlCj4+IAo+PiBUaGlzIHdpbGwgZW5hYmxlIHBsYXRmb3JtcyB0byBleHRyYWN0IGNhbGRhdGEg
dG8gYW4gYXJiaXRyYXJ5IGZpbGUsIG9yIHBhdGNoIG1hYwo+PiBpbiBhbiBhYml0cmFyeSBmaWxl
Lgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQu
b3JnPgo+PiAtLS0KPj4gcGFja2FnZS9iYXNlLWZpbGVzL01ha2VmaWxlICAgICAgICAgICAgICAg
ICAgICAgICB8ICAyICstCj4+IHBhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvZnVuY3Rpb25z
L2NhbGRhdGEuc2ggfCAyOSArKysrKysrKysrKysrKysrLS0KPj4gLS0tLS0KPj4gMiBmaWxlcyBj
aGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdp
dCBhL3BhY2thZ2UvYmFzZS1maWxlcy9NYWtlZmlsZSBiL3BhY2thZ2UvYmFzZS1maWxlcy9NYWtl
ZmlsZSBpbmRleAo+PiAxNTZlN2JjOGI5Li5mMWYwZjE3YTYwIDEwMDY0NAo+PiAtLS0gYS9wYWNr
YWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUKPj4gKysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL01ha2Vm
aWxlCj4+IEBAIC0xMiw3ICsxMiw3IEBAIGluY2x1ZGUgJChJTkNMVURFX0RJUikvdmVyc2lvbi5t
ayAgaW5jbHVkZQo+PiAkKElOQ0xVREVfRElSKS9mZWVkcy5tawo+PiAKPj4gUEtHX05BTUU6PWJh
c2UtZmlsZXMKPj4gLVBLR19SRUxFQVNFOj0yMTgKPj4gK1BLR19SRUxFQVNFOj0yMTkKPj4gUEtH
X0ZMQUdTOj1ub25zaGFyZWQKPj4gCj4+IFBLR19GSUxFX0RFUEVORFM6PSQoUExBVEZPUk1fRElS
KS8KPj4gJChHRU5FUklDX1BMQVRGT1JNX0RJUikvYmFzZS1maWxlcy8KPj4gZGlmZiAtLWdpdCBh
L3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvZnVuY3Rpb25zL2NhbGRhdGEuc2ggYi9wYWNr
YWdlL2Jhc2UtCj4+IGZpbGVzL2ZpbGVzL2xpYi9mdW5jdGlvbnMvY2FsZGF0YS5zaAo+PiBpbmRl
eCAzYmRiMWU0ZGQ1Li5lOTM0OWM3ZWVlIDEwMDY0NAo+PiAtLS0gYS9wYWNrYWdlL2Jhc2UtZmls
ZXMvZmlsZXMvbGliL2Z1bmN0aW9ucy9jYWxkYXRhLnNoCj4+ICsrKyBiL3BhY2thZ2UvYmFzZS1m
aWxlcy9maWxlcy9saWIvZnVuY3Rpb25zL2NhbGRhdGEuc2gKPj4gQEAgLTYwLDE1ICs2MCwyMSBA
QCBjYWxkYXRhX2Zyb21fZmlsZSgpIHsKPj4gCWxvY2FsIHNvdXJjZT0kMQo+PiAJbG9jYWwgb2Zm
c2V0PSQoKCQyKSkKPj4gCWxvY2FsIGNvdW50PSQoKCQzKSkKPj4gKwlsb2NhbCB0YXJnZXQ9JDQK
Pj4gCj4+IC0JZGQgaWY9JHNvdXJjZSBvZj0vbGliL2Zpcm13YXJlLyRGSVJNV0FSRSBpZmxhZz1z
a2lwX2J5dGVzCj4+IGJzPSRjb3VudCBza2lwPSRvZmZzZXQgY291bnQ9MSAyPi9kZXYvbnVsbCB8
fCBcCj4+ICsJWyAteiAiJHRhcmdldCIgXSAmJiB0YXJnZXQ9L2xpYi9maXJtd2FyZS8kRklSTVdB
UkUKPj4gKwo+PiArCWRkIGlmPSRzb3VyY2Ugb2Y9JHRhcmdldCBpZmxhZz1za2lwX2J5dGVzIGJz
PSRjb3VudCBza2lwPSRvZmZzZXQKPj4gK2NvdW50PTEgMj4vZGV2L251bGwgfHwgXAo+PiAJCWNh
bGRhdGFfZGllICJmYWlsZWQgdG8gZXh0cmFjdCBjYWxpYnJhdGlvbiBkYXRhIGZyb20gJHNvdXJj
ZSIKPj4gfQo+PiAKPj4gY2FsZGF0YV92YWxpZCgpIHsKPj4gCWxvY2FsIGV4cGVjdGVkPSIkMSIK
Pj4gKwlsb2NhbCB0YXJnZXQ9JDIKPj4gKwo+PiArCVsgLXogIiR0YXJnZXQiIF0gJiYgdGFyZ2V0
PS9saWIvZmlybXdhcmUvJEZJUk1XQVJFCj4+IAo+PiAtCW1hZ2ljPSQoaGV4ZHVtcCAtdiAtbiAy
IC1lICcxLzEgIiUwMngiJyAvbGliL2Zpcm13YXJlLyRGSVJNV0FSRSkKPj4gKwltYWdpYz0kKGhl
eGR1bXAgLXYgLW4gMiAtZSAnMS8xICIlMDJ4IicgJHRhcmdldCkKPj4gCVsgIiRtYWdpYyIgPSAi
JGV4cGVjdGVkIiBdCj4+IAlyZXR1cm4gJD8KPj4gfQo+PiBAQCAtNzcsNiArODMsNyBAQCBjYWxk
YXRhX3BhdGNoX2Noa3N1bSgpIHsKPj4gCWxvY2FsIG1hYz0kMQo+PiAJbG9jYWwgbWFjX29mZnNl
dD0kKCgkMikpCj4+IAlsb2NhbCBjaGtzdW1fb2Zmc2V0PSQoKCQzKSkKPj4gKwlsb2NhbCB0YXJn
ZXQ9JDQKPj4gCWxvY2FsIHhvcl9tYWMKPj4gCWxvY2FsIHhvcl9md19tYWMKPj4gCWxvY2FsIHhv
cl9md19jaGtzdW0KPj4gQEAgLTkxLDM4ICs5OCw0NCBAQCBjYWxkYXRhX3BhdGNoX2Noa3N1bSgp
IHsKPj4gCXhvcl9md19jaGtzdW09JCh4b3IgJHhvcl9md19jaGtzdW0gJHhvcl9md19tYWMgJHhv
cl9tYWMpCj4+IAo+PiAJcHJpbnRmICIlYiIgIlx4JHt4b3JfZndfY2hrc3VtOjA6Mn1ceCR7eG9y
X2Z3X2Noa3N1bToyOjJ9IiB8IFwKPj4gLQkJZGQgb2Y9L2xpYi9maXJtd2FyZS8kRklSTVdBUkUg
Y29udj1ub3RydW5jIGJzPTEKPj4gc2Vlaz0kY2hrc3VtX29mZnNldCBjb3VudD0yCj4+ICsJCWRk
IG9mPSR0YXJnZXQgY29udj1ub3RydW5jIGJzPTEgc2Vlaz0kY2hrc3VtX29mZnNldAo+PiBjb3Vu
dD0yCj4+IH0KPj4gCj4+IGNhbGRhdGFfcGF0Y2hfbWFjKCkgewo+PiAJbG9jYWwgbWFjPSQxCj4+
IAlsb2NhbCBtYWNfb2Zmc2V0PSQoKCQyKSkKPj4gCWxvY2FsIGNoa3N1bV9vZmZzZXQ9JDMKPj4g
Kwlsb2NhbCB0YXJnZXQ9JDQKPj4gCj4+IAlbIC16ICIkbWFjIiAtbyAteiAiJG1hY19vZmZzZXQi
IF0gJiYgcmV0dXJuCj4+IAo+PiAtCVsgLW4gIiRjaGtzdW1fb2Zmc2V0IiBdICYmIGNhbGRhdGFf
cGF0Y2hfY2hrc3VtICIkbWFjIgo+PiAiJG1hY19vZmZzZXQiICIkY2hrc3VtX29mZnNldCIKPj4g
KwlbIC16ICIkdGFyZ2V0IiBdICYmIHRhcmdldD0vbGliL2Zpcm13YXJlLyRGSVJNV0FSRQo+PiAr
Cj4+ICsJWyAtbiAiJGNoa3N1bV9vZmZzZXQiIF0gJiYgY2FsZGF0YV9wYXRjaF9jaGtzdW0gIiRt
YWMiCj4+ICIkbWFjX29mZnNldCIgIiRjaGtzdW1fb2Zmc2V0IiAiJHRhcmdldCIKPj4gCj4+IC0J
bWFjYWRkcl8yYmluICRtYWMgfCBkZCBvZj0vbGliL2Zpcm13YXJlLyRGSVJNV0FSRQo+PiBjb252
PW5vdHJ1bmMgb2ZsYWc9c2Vla19ieXRlcyBicz02IHNlZWs9JG1hY19vZmZzZXQgY291bnQ9MSB8
fCBcCj4+ICsJbWFjYWRkcl8yYmluICRtYWMgfCBkZCBvZj0kdGFyZ2V0IGNvbnY9bm90cnVuYyBv
ZmxhZz1zZWVrX2J5dGVzCj4+IGJzPTYKPj4gK3NlZWs9JG1hY19vZmZzZXQgY291bnQ9MSB8fCBc
Cj4+IAkJY2FsZGF0YV9kaWUgImZhaWxlZCB0byB3cml0ZSBNQUMgYWRkcmVzcyB0byBlZXByb20g
ZmlsZSIKPj4gfQo+PiAKPj4gYXRoOWtfcGF0Y2hfbWFjKCkgewo+PiAJbG9jYWwgbWFjPSQxCj4+
ICsJbG9jYWwgdGFyZ2V0PSQyCj4+IAo+PiAtCWNhbGRhdGFfcGF0Y2hfbWFjICIkbWFjIiAweDIK
Pj4gKwljYWxkYXRhX3BhdGNoX21hYyAiJG1hYyIgMHgyICIiICIkdGFyZ2V0Igo+PiB9Cj4+IAo+
PiBhdGg5a19wYXRjaF9tYWNfY3JjKCkgewo+PiAJbG9jYWwgbWFjPSQxCj4+IAlsb2NhbCBtYWNf
b2Zmc2V0PSQyCj4+IAlsb2NhbCBjaGtzdW1fb2Zmc2V0PSQoKG1hY19vZmZzZXQgLSAxMCkpCj4+
ICsJbG9jYWwgdGFyZ2V0PSQ0Cj4+IAo+PiAtCWNhbGRhdGFfcGF0Y2hfbWFjICIkbWFjIiAiJG1h
Y19vZmZzZXQiICIkY2hrc3VtX29mZnNldCIKPj4gKwljYWxkYXRhX3BhdGNoX21hYyAiJG1hYyIg
IiRtYWNfb2Zmc2V0IiAiJGNoa3N1bV9vZmZzZXQiCj4+ICIkdGFyZ2V0Igo+PiB9Cj4+IAo+PiBh
dGgxMGtfcGF0Y2hfbWFjKCkgewo+PiAJbG9jYWwgbWFjPSQxCj4+ICsJbG9jYWwgdGFyZ2V0PSQy
Cj4+IAo+PiAtCWNhbGRhdGFfcGF0Y2hfbWFjICIkbWFjIiAweDYgMHgyCj4+ICsJY2FsZGF0YV9w
YXRjaF9tYWMgIiRtYWMiIDB4NiAweDIgIiR0YXJnZXQiCj4+IH0KPj4gLS0KPj4gMi4xMS4wCj4+
IAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwo+PiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
