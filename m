Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4FD1718A3
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 14:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlT5Tt1jgrXYX7pb46tydEfxRUy3rCcU5EFMikUsfEs=; b=HvBDb2WO0PkhM0
	LLx97wlKzxb56pGxO1HdXQVMs24AujeWV0mcENfrxYDaG/5/ji1YrgWv99TiAY9+p74LnmwYKFank
	3OweSP2InfA2N8V//4AShSc6VPjon7yLsfy+4Pxx7LIRL3u7htFieAbAEgP87e6vNzIMrp3bJIlsM
	a3dp426Ua2tdZSu1KR8gdsVNb5Cpq++wur77atDvLs5dpRhahbSVugSkOyfZBJUxfMx6XRbwHzn/a
	yNTzhh/47AMX7jsquSITWegUQYtqwt9WD0fIhCmZcPjb/E1bXQkvpuRnhJcJ1un7bwo/8GSgjCCpL
	AJw0aFfdhw6wypdf4oZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7JDk-0003OO-GX; Thu, 27 Feb 2020 13:28:56 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7JDb-0003Mu-BE
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 13:28:50 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net)
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <shep971@centurylink.net>) id 1j7JDW-0004Xu-Cy
 for openwrt-devel@openwrt.org; Thu, 27 Feb 2020 08:28:43 -0500
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1582810120;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=tpbWOL8tDniDXqFGlaYbxR+5TUk=;
 b=h7V7zQzrFk8pKDmOx59k4WJtNGfu0bopO95rAUTN1s9c8SM2yzotly39NWw6OPcy
 PVQI/cQrp+xk7z/cG1+JNfttZtxsUe2/FyQuZRAPW29qELK1as0uM/b9j4A0CQRc
 G6EWi1VO9mUP6fikAxrbyUjUhVYPeaXddu3nMGp4j5+UAmB5CrDyJ5lCzUj5CVzK
 0EfjVQM9RltJCtg/BtOPk/7PnZ8DpdW8OZ9kkVoVjwvZPspse1hn0kqhPkGoK2SI
 OVT6I53ASA1Koc9CBjEhpJKfQCVxm9db0IVX5mQfVyq3WnOs+Ufr4TxfOfzrg1OS
 rAOHggjPjx7wR+He+jD4VQ==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=WdVylHpX c=1 sm=1 tr=0
 a=n6W1qF9bqTqjlf0I0+Sn6Q==:117 a=n6W1qF9bqTqjlf0I0+Sn6Q==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10
 a=l697ptgUJYAA:10 a=AsiJWZegAdEA:10 a=eQrCS-SpgXYA:10 a=jdP34snFAAAA:8
 a=I_5RNyk1AAAA:8 a=2IFCqyWHWx8_9_xxjW8A:9 a=C8nz3eQoa1ht6d_i:21
 a=v7bXsuN_-3jRuNS4:21 a=QEXdDO2ut3YA:10 a=jlphF6vWLdwq7oh3TaWq:22
 a=Eh9yxdLE6B1twWrs3SXz:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp02.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.5.18] ([71.32.5.18:49684] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=AES256-GCM-SHA384) 
 id 6A/92-13908-704C75E5; Thu, 27 Feb 2020 08:28:39 -0500
Date: Thu, 27 Feb 2020 05:28:33 -0800
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@openwrt.org
Message-ID: <20200227132832.GA1550@centurylink.net>
References: <20200227023902.GA31471@centurylink.net>
 <00b701d5ed6a$ae2982d0$0a7c8870$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00b701d5ed6a$ae2982d0$0a7c8870$@adrianschmutzler.de>
Organization: Penguin Innovations
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  On Feb 27, 2020: 13:37, Adrian Schmutzler wrote: >Hi, > >>
 Content analysis details:   (-1.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: openwrt.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shep971[at]centurylink.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (shep971[at]centurylink.net)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_052847_693760_F472167E 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: add TRENDnet TEW-810DR
 support
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

T24gRmViIDI3LCAyMDIwOiAxMzozNywgQWRyaWFuIFNjaG11dHpsZXIgd3JvdGU6Cj5IaSwKPgo+
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBvcGVud3J0LWRldmVsIFttYWls
dG86b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQub3JnXSBPbgo+PiBCZWhhbGYg
T2YgSGVwcGxlciwgSi4gU2NvdHQKPj4gU2VudDogRG9ubmVyc3RhZywgMjcuIEZlYnJ1YXIgMjAy
MCAwMzozOQo+PiBUbzogb3BlbndydC1kZXZlbEBvcGVud3J0Lm9yZwo+PiBTdWJqZWN0OiBbT3Bl
bldydC1EZXZlbF0gW1BBVENIIHYyXSByYW1pcHM6IGFkZCBUUkVORG5ldCBURVctODEwRFIgc3Vw
cG9ydAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKLiBTY290dCBIZXBwbGVyIDxzaGVwOTcxQGNlbnR1
cnlsaW5rLm5ldD4KPj4KPj4gcmFtaXBzOiBhZGQgc3VwcG9ydCBmb3IgVFJFTkRuZXQgVEVXLTgx
MERSCj4+Cj4+IEV4YWN0IGhhcmR3YXJlIGNsb25lIGZvciB0aGUgRC1MaW5rIERJUi04MTBMLiAg
U2VlIE9wZW5XUlQgZGV2aWNlIHBhZ2VzCj4+IGFuZCByZXZpZXcgdGhlIFBDQiBwaG90b3MsIGJv
b3QgbG9ncyBhbmQgTVRQIGZsYXNoIHBhcnRpdGlvbnMuCj4+IGh0dHBzOi8vb3BlbndydC5vcmcv
dG9oL3RyZW5kbmV0L3RyZW5kbmV0X3Rldy04MTBkcl8xLjBfMS4xCj4+IGh0dHBzOi8vb3Blbndy
dC5vcmcvdG9oL2QtbGluay9kaXItODEwbAo+Pgo+PiBTcGVjaWZpY2F0aW9uOgo+Pgo+PiAqIE1l
ZGlhVGVrIE1UNzYyMEEgKDU4MCBNaHopCj4+ICogOCBNQiBvZiBGTEFTSAo+PiAqIDY0IE1CIG9m
IFJBTQo+PiAqIDV4IDEwLzEwMCBNYnBzIEV0aGVybmV0ICgxIFdBTiBhbmQgNCBMQU4pCj4+ICog
VUFSVCBoZWFkZXIgb24gUENCICg1NzYwMCA4bjEpCj4+ICogMnggQmlDb2xvciBMRUQgKEdQSU8t
Y29udHJvbGxlZCkKPj4gKiAyeCBidXR0b24gLSBwb3dlciBhbmQgcmVzZXQKPj4gKiBVLWJvb3Qg
Ym9vdGxvYWRlcgo+Pgo+PiBJbnN0YWxsYXRpb246Cj4+Cj4+IFRoZSBzeXN1cGdyYWRlLmJpbiBp
bWFnZSBuZWVkcyB0byBoYXZlIGEgY2FtZW8gaGFyZHdhcmUgSUQgYXBwZW5kZWQKPj4gd2l0aCBu
Y2NfYXR0X2h3aWQuICBuY2NfYXR0X2h3aWQgaXMgYXZhaWxhYmxlIGluIHRoZSBHUEwgU291cmNl
Cj4+IGRvd25sb2FkIGZvciBlaXRoZXIgdGhlIFRFVy04MTBEUiBvciBESVItODEwTCBhbmQgaXMg
bG9jYXRlZCBhdAo+PiBzb3VyY2UvdXNlci93b2xmL2NhbWVvL25jYy9ob3N0VG9vbHMKPj4gVGhl
IGludm9jYXRpb24gaXM6Cj4+IG5jY19hdHRfaHdpZCAtZiB0ZXctODEwLXNxdWFzaGZzLWZhY3Rv
cnkuYmluIC1hIC1tIOKAnFRFVy04MTBEUuKAnQo+PiAtSCDigJwxLjBS4oCdIC1yIOKAnFdX4oCd
IC1jIOKAnDEuMOKAnQo+PiBNb3JlIGluZm9ybWF0aW9uIGlzIGF2YWlsYWJsZSBpbiB0aGUgZGV2
aWNlIHBhZ2UgZm9yIFRFVy04MTBEUiBsaW5rZWQKPj4gYWJvdmUgVGhlIGFwcGVuZGVkIGltYWdl
IGNhbiB0aGVuIGJlIGZsYXNoIHZpYSB0aGUgV2ViIHJlc2N1ZSBpbnRlcmZhY2UKPj4gMTkyLjE2
OC4xMC4xIG9yIFRGVFAncyB0byB0aGUgc2FtZSBJUCBhZGRyZXNzLiAgU3Vic2VxdWVudCB1cGdy
YWRlcwo+PiBjYW4gYmUgZG9uZSB1c2luZyB0aGUgTHVjaSB3ZWIgaW50ZXJmYWNlIG9yIHRoZSBz
c2ggY29tbWFuZCBsaW5lIHBlciB0aGUKPj4gT3BlbldSVCBkb2N1bWVudGF0aW9uCj4+IC0tLQo+
PiAgLi4uL3JhbWlwcy9kdHMvbXQ3NjIwYV90cmVuZG5ldF90ZXctODEwZHIuZHRzIHwgMTU3ICsr
KysrKysrKysrKysrKysrKwo+PiAgdGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2MjAubWsg
ICAgICAgICAgIHwgIDEwICsrCj4+ICAuLi4vbXQ3NjIwL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQv
MDJfbmV0d29yayAgfCAgIDMgKy0KPj4gIDMgZmlsZXMgY2hhbmdlZCwgMTY5IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvcmFt
aXBzL2R0cy9tdDc2MjBhX3RyZW5kbmV0X3Rldy04MTBkci5kdHMKPj4KPj4gZGlmZiAtLWdpdCBh
L3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMGFfdHJlbmRuZXRfdGV3LTgxMGRyLmR0cwo+
PiBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMGFfdHJlbmRuZXRfdGV3LTgxMGRyLmR0
cwo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwLi5lYjM4MTEwODAx
Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIw
YV90cmVuZG5ldF90ZXctODEwZHIuZHRzCj4KPnNoYXJlZCBEVFNJIHdpdGggZGlyLTgxMGwgPwoK
SSdtIHdvcnJpZWQgYWJvdXQgYWx0ZXJpbmcgdGhlIERJUi04MTBMIGNvZGUuICBJIGRvIG5vdCBo
YXZlIHRoZSBELUxpbmsKdG8gdGVzdCBhbmQgaXQgd2FzIHN1Ym1pdHRlZCBieSBzb21lb25lIGVs
c2UuCj4KPj4gQEAgLTAsMCArMSwxNTcgQEAKPj4gKy9kdHMtdjEvOwo+PiArCj4+ICsjaW5jbHVk
ZSAibXQ3NjIwYS5kdHNpIgo+PiArCj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlv
Lmg+Cj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvaW5wdXQuaD4KPj4gKwo+PiArLyB7
Cj4+ICsJY29tcGF0aWJsZSA9ICJ0cmVuZG5ldCx0ZXctODEwZHIiLCAicmFsaW5rLG10NzYyMGEt
c29jIjsKPj4gKwltb2RlbCA9ICJUUkVORG5ldCBURVctODEwRFIiOwo+PiArCj4+ICsJYWxpYXNl
cyB7Cj4+ICsJCWxlZC1ib290ID0gJmxlZF9wb3dlcl9ncmVlbjsKPj4gKwkJbGVkLWZhaWxzYWZl
ID0gJmxlZF9wb3dlcl9ncmVlbjsKPj4gKwkJbGVkLXJ1bm5pbmcgPSAmbGVkX3Bvd2VyX2dyZWVu
Owo+PiArCQlsZWQtdXBncmFkZSA9ICZsZWRfcG93ZXJfZ3JlZW47Cj4+ICsJCWxhYmVsLW1hYy1k
ZXZpY2UgPSAmZXRoZXJuZXQ7Cj4+ICsJfTsKPj4gKwo+PiArCWtleXMgewo+PiArCQljb21wYXRp
YmxlID0gImdwaW8ta2V5cyI7Cj4+ICsKPj4gKwkJcmVzZXQgewo+PiArCQkJbGFiZWwgPSAicmVz
ZXQiOwo+PiArCQkJZ3Bpb3MgPSA8JmdwaW8wIDEgR1BJT19BQ1RJVkVfTE9XPjsKPj4gKwkJCWxp
bnV4LGNvZGUgPSA8QlROXzA+Owo+PiArCQl9Owo+PiArCj4+ICsJCXdwcyB7Cj4+ICsJCQlsYWJl
bCA9ICJ3cHMiOwo+PiArCQkJZ3Bpb3MgPSA8JmdwaW8wIDIgR1BJT19BQ1RJVkVfTE9XPjsKPj4g
KwkJCWxpbnV4LGNvZGUgPSA8QlROXzA+Owo+Cj5XaHkgbm90IHVzZSB0aGUgcHJvcGVyIGNvZGVz
IG9uIHRoZXNlPyAgV291bGQgdGhlIGNvZGUgYWxzbyBuZWVkIHRvIGJlCj5hbHRlcmVkIG9uIHRo
ZSBESVItODEwTD8gIENhbiB5b3UgcG9pbnQgbWUgdG8gcmVmZXJlbmNlPwo+Cj4+ICsJCX07Cj4+
ICsJfTsKPj4gKwo+PiArCWxlZHMgewo+PiArCQljb21wYXRpYmxlID0gImdwaW8tbGVkcyI7Cj4+
ICsKPj4gKwkJbGVkX3Bvd2VyX2dyZWVuOiBwb3dlciB7Cj4KPmxlZF9wb3dlcl9ncmVlbjogcG93
ZXJfZ3JlZW4gewo+Cj4+ICsJCQlsYWJlbCA9ICJkaXItODEwbDpncmVlbjpwb3dlciI7Cj4KPlRo
YXQgd291bGQgYmUgb25lIG9mIHRoZSBmZXcgcGFydHMgd2hlcmUgYm90aCBkZXZpY2VzIHdpbGwg
YmUgZGlmZmVyZW50IChhbmQgd2hpY2ggd291bGQgbm90IGJlbG9uZyBpbnRvIGEgc2hhcmVkIERU
U0kpLiBCdXQgaWYgeW91IGRpZG4ndCBldmVuIGNoYW5nZSB0aGUgbmFtZSwgaGF2ZSB5b3UgYWN0
dWFsbHkgY2hlY2tlZCB3aGV0aGVyIHRoZSBMRUQgR1BJT3MgYXJlIHRoZSBzYW1lPwpUaGUgVHJl
bmRuZXQgYWxzbyBoYXMgMiBwYWlycyBvZiBncmVlbi9vcmFuZ2UgTEVEcwo+Cj4+ICsJCQlncGlv
cyA9IDwmZ3BpbzAgOSBHUElPX0FDVElWRV9ISUdIPjsKPj4gKwkJfTsKPj4gKwo+PiArCQl3YW4g
ewo+PiArCQkJbGFiZWwgPSAiZGlyLTgxMGw6b3JhbmdlOndhbiI7Cj4+ICsJCQlncGlvcyA9IDwm
Z3BpbzAgMTIgR1BJT19BQ1RJVkVfSElHSD47Cj4+ICsJCX07Cj4+ICsKPj4gKwkJcG93ZXIyIHsK
Pgo+cG93ZXJfb3JhbmdlCj4KPj4gKwkJCWxhYmVsID0gImRpci04MTBsOm9yYW5nZTpwb3dlciI7
Cj4+ICsJCQlncGlvcyA9IDwmZ3BpbzAgMTMgR1BJT19BQ1RJVkVfSElHSD47Cj4+ICsJCX07Cj4+
ICsJfTsKPj4gK307Cj4+ICsKPj4gKyZzcGkwIHsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICsK
Pj4gKwltMjVwODBAMCB7Cj4KPmZsYXNoQDAKPgo+PiArCQljb21wYXRpYmxlID0gImplZGVjLHNw
aS1ub3IiOwo+PiArCQlyZWcgPSA8MD47Cj4+ICsJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDEwMDAw
MDAwPjsKPgo+Q2FuIHRoaXMgZ28gZmFzdGVyPwpXb3VsZCB0aGlzIHdvdWxkIGdvIGluIGEgc2hh
cmVkIGR0c2kuICBTaG91bGQgSSBtYWtlIGEgY2hhbmdlIG9uIGEKZGV2aWNlIEkgZG8gbm90IGhh
dmUgYWNjZXNzIHRvPwo+Cj4+ICsKPj4gKwkJcGFydGl0aW9ucyB7Cj4+ICsJCQljb21wYXRpYmxl
ID0gImZpeGVkLXBhcnRpdGlvbnMiOwo+PiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsJ
CQkjc2l6ZS1jZWxscyA9IDwxPjsKPj4gKwo+PiArCQkJcGFydGl0aW9uQDAgewo+PiArCQkJCWxh
YmVsID0gInUtYm9vdCI7Cj4+ICsJCQkJcmVnID0gPDB4MCAweDMwMDAwPjsKPj4gKwkJCQlyZWFk
LW9ubHk7Cj4+ICsJCQl9Owo+PiArCj4+ICsJCQlwYXJ0aXRpb25AMzAwMDAgewo+PiArCQkJCWxh
YmVsID0gInUtYm9vdC1lbnYiOwo+PiArCQkJCXJlZyA9IDwweDMwMDAwIDB4MTAwMDA+Owo+PiAr
CQkJCXJlYWQtb25seTsKPj4gKwkJCX07Cj4+ICsKPj4gKwkJCWZhY3Rvcnk6IHBhcnRpdGlvbkA0
MDAwMCB7Cj4+ICsJCQkJbGFiZWwgPSAiZmFjdG9yeSI7Cj4+ICsJCQkJcmVnID0gPDB4NDAwMDAg
MHgxMDAwMD47Cj4+ICsJCQkJcmVhZC1vbmx5Owo+PiArCQkJfTsKPj4gKwo+PiArCQkJZmFjdG9y
eTVnOiBwYXJ0aXRpb25ANTAwMDAgewo+PiArCQkJCWxhYmVsID0gImZhY3Rvcnk1ZyI7Cj4+ICsJ
CQkJcmVnID0gPDB4NTAwMDAgMHgxMDAwMD47Cj4+ICsJCQkJcmVhZC1vbmx5Owo+PiArCQkJfTsK
Pj4gKwo+PiArCQkJcGFydGl0aW9uQDYwMDAwIHsKPj4gKwkJCQlsYWJlbCA9ICJXb2xmX0NvbmZp
ZyI7Cj4+ICsJCQkJcmVnID0gPDB4NjAwMDAgMHgxMDAwMD47Cj4+ICsJCQkJcmVhZC1vbmx5Owo+
PiArCQkJfTsKPj4gKwo+PiArCQkJcGFydGl0aW9uQDcwMDAwIHsKPj4gKwkJCQlsYWJlbCA9ICJN
eURsaW5rIjsKPj4gKwkJCQlyZWcgPSA8MHg3MDAwMCAweDgwMDAwPjsKPj4gKwkJCQlyZWFkLW9u
bHk7Cj4+ICsJCQl9Owo+PiArCj4+ICsJCQlwYXJ0aXRpb25AZTAwMDAgewo+PiArCQkJCWxhYmVs
ID0gIkpmZnMyIjsKPj4gKwkJCQlyZWcgPSA8MHhlMDAwMCAweDgwMDAwPjsKPgo+QmFzZWQgb24g
dGhlIHByZXZpb3VzIHBhcnRpdGlvbidzIHNpemUsIHRoaXMgc2hvdWxkIGJlIDB4ZjAwMDAuIFRo
aXMgd291bGQgYWxzbyBtYXRjaCB0aGUgc3RhcnQgb2YgdGhlIHN1YnNlcXVlbnQgcGFydGl0aW9u
Lgo+Cj5DYW4geW91IHByb3ZpZGUgdGhlIHBhcnRpdGlvbmluZyBvZiB0aGUgZGV2aWNlIHdpdGgg
c3RvY2sgZmlybXdhcmU/Ckl0IHdhcyBnaXZlbiBpbiB0aGUgRGV2aWNlIHBhZ2UgSSBsaW5rZWQg
YWJvdmUuICBUaGUgRElSLTgxMEwgc3RvY2sKcGFydGl0aW9uIHRhYmxlIGlzIGFsc28gaW4gdGhl
IHJlc3BlY3RpdmUgbGluay4gIEkgdmVyaWZpZWQgdGhhdCBib3RoCmRldmljZXMgdXNlIHRoZSBz
YW1lIGZsYXNoL3JhbSBjaGlwcyBpbiB0aGUgQm9vdGxvZ3MgYW5kIFdpa2lkZXZpCmFyY2hpdmUu
Cj4KPj4gKwkJCQlyZWFkLW9ubHk7Cj4+ICsJCQl9Owo+PiArCj4+ICsJCQlwYXJ0aXRpb25AMTcw
MDAwIHsKPj4gKwkJCQljb21wYXRpYmxlID0gImRlbngsdWltYWdlIjsKPj4gKwkJCQlsYWJlbCA9
ICJmaXJtd2FyZSI7Cj4+ICsJCQkJcmVnID0gPDB4MTcwMDAwIDB4NjkwMDAwPjsKPj4gKwkJCX07
Cj4+ICsJCX07Cj4+ICsJfTsKPj4gK307Cj4+ICsKPj4gKyZzdGF0ZV9kZWZhdWx0IHsKPj4gKwln
cGlvIHsKPj4gKwkJcmFsaW5rLGdyb3VwID0gIm1kaW8iLCAicmdtaWkxIiwgImkyYyIsICJ3bGVk
IiwgInVhcnRmIjsKPgo+SSBvbmx5IHNlZSAiaTJjIiBhbmQgInVhcnRmIiByZXF1aXJlZCBhYm92
ZS4KPgo+PiArCQlyYWxpbmssZnVuY3Rpb24gPSAiZ3BpbyI7Cj4+ICsJfTsKPj4gK307Cj4+ICsK
Pj4gKyZldGhlcm5ldCB7Cj4+ICsJbXRkLW1hYy1hZGRyZXNzID0gPCZmYWN0b3J5IDB4Mjg+Owo+
Cj5IYXZlIHlvdSB2ZXJpZmllZCB0aGUgTUFDIGFkZHJlc3MgYXNzaWdubWVudCBmb3IgV2lGaSBh
bmQgZXRoZXJuZXQgd2l0aCB2ZW5kb3IgT1M/CldpbGwgZG8gbGF0ZXIgdG9kYXkuCj4KPj4gKwlt
ZWRpYXRlayxwb3J0bWFwID0gImxsbGx3IjsKPj4gK307Cj4+ICsKPj4gKyZnc3cgewo+PiArCW1l
ZGlhdGVrLHBvcnQ0ID0gImVwaHkiOwo+PiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+
ICsJcGluY3RybC0wID0gPCZlcGh5X3BpbnM+Owo+PiArfTsKPj4gKwo+PiArJnBjaWUgewo+PiAr
CXN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gKyZ3bWFjIHsKPj4gKwlyYWxpbmssbXRk
LWVlcHJvbSA9IDwmZmFjdG9yeSAweDA+Owo+PiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7
Cj4+ICsJcGluY3RybC0wID0gPCZwYV9waW5zPjsKPj4gKwltdGQtbWFjLWFkZHJlc3MgPSA8JmZh
Y3RvcnkgMHgyOD47Cj4KPklzIHRoZXJlIG5vIHZhbGlkIGFkZHJlc3MgaW4gZmFjdG9yeSAweDQ/
Cj4KPj4gK307Cj4+ICsKPj4gKyZwY2llMCB7Cj4+ICsJd2lmaUAwLDAgewo+PiArCQlyZWcgPSA8
MHgwMDAwIDAgMCAwIDA+Owo+PiArCQltZWRpYXRlayxtdGQtZWVwcm9tID0gPCZmYWN0b3J5IDB4
ODAwMD47Cj4KPkkgd29uZGVyIHdoeSB0aGVyZSBpcyBhIGZhY3Rvcnk1ZyBwYXJ0aXRpb24gdGhl
bj8KQWNjb3JkaW5nIHRvIGRldmljZSBwYWdlcyBsaW5rZWQgYWJvdmUsIEJvdGggdGhlIFRyZW5k
bmV0IGFuZCB0aGUgRC1MaW5rCmhhdmUgbXRkNDogMDAwMTAwMDAgMDAwMTAwMDAgIjVHX1JGIi4g
IDVHIGRpZCBub3QgaW5pdGlhbGx5IHdvcmsgb24gdGhlCkQtbGluay4gIEZyb20gaHR0cHM6Ly9v
cGVud3J0Lm9yZy90b2gvaHdkYXRhL2QtbGluay9kLWxpbmtfZGlyLTgxMGxfYjEKCkNvbW1lbnRz
OiBXaUZpIDVHSHogdW5zdXBwb3J0ZWQgdXAgdG8gMTguMDYuMTsgV2lGaSA1R0h6IHN1cHBvcnQg
YWRkZWQKaW4gc25hcHNob3QgKGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53cnQvb3Bl
bndydC5naXQ7YT0KY29tbWl0O2g9Y2I2YThhYTU4NGEyYmU2MmFlYWM5YjViMTU3MzMwM2Q1NjE1
YzY3MikKPgo+PiArCQlpZWVlODAyMTEtZnJlcS1saW1pdCA9IDw1MDAwMDAwIDYwMDAwMDA+Owo+
PiArCQltdGQtbWFjLWFkZHJlc3MgPSA8JmZhY3RvcnkgMHgyOD47Cj4+ICsJCW10ZC1tYWMtYWRk
cmVzcy1pbmNyZW1lbnQgPSA8Mj47Cj4KPklzIHRoZXJlIG5vIHZhbGlkIGFkZHJlc3MgaW4gZmFj
dG9yeSAweDgwMDQ/Cj4KPj4gKwl9Owo+PiArfTsKPj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51
eC9yYW1pcHMvaW1hZ2UvbXQ3NjIwLm1rCj4+IGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9t
dDc2MjAubWsKPj4gaW5kZXggMzUxMmExYzU1YS4uNzFlNDI3MGEyMCAxMDA2NDQKPj4gLS0tIGEv
dGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2MjAubWsKPj4gKysrIGIvdGFyZ2V0L2xpbnV4
L3JhbWlwcy9pbWFnZS9tdDc2MjAubWsKPj4gQEAgLTk0Miw2ICs5NDIsMTYgQEAgZGVmaW5lIERl
dmljZS90cGxpbmtfcmUyMDAtdjEKPj4gIGVuZGVmCj4+ICBUQVJHRVRfREVWSUNFUyArPSB0cGxp
bmtfcmUyMDAtdjEKPj4KPj4gK2RlZmluZSBEZXZpY2UvdHJlbmRuZXRfdGV3LTgxMGRyCj4+ICsg
IFNPQyA6PSBtdDc2MjBhCj4+ICsgIERFVklDRV9QQUNLQUdFUyA6PSBrbW9kLW10NzZ4MGUKPj4g
KyAgREVWSUNFX1ZFTkRPUiA6PSBUUkVORG5ldAo+PiArICBERVZJQ0VfTU9ERUwgOj0gVEVXLTgx
MERSCj4+ICsgIElNQUdFX1NJWkUgOj0gNjcyMGsKPj4gKyAgU1VQUE9SVEVEX0RFVklDRVMgKz0g
ZGlyLTgxMGwKPgo+SSBkbyBub3Qgc2VlIGEgcmVhc29uIHRvIGVuYWJsZSBjcm9zcy1mbGFzaGlu
ZyBiZXR3ZWVuIGRpZmZlcmVudCBkZXZpY2VzLiBJIHNlZSB0aGF0IHRoaXMgaXMgbWVhbnQgZm9y
IHRob3NlIHdobyB1c2VkIGRpci04MTBsIGltYWdlIG9uIHRoaXMgZGV2aWNlIGJlZm9yZSwgYnV0
IHN0aWxsIEkgZG8gbm90IHRoaW5rIGl0J3MgYSBnb29kIGlkZWEgdG8gaGF2ZSB0aGlzIHBhdGgg
YXZhaWxhYmxlIGJ5IGRlZmF1bHQuCldvdWxkIGFsbCB0aGUgY29uY2VybnMgeW91IHJhaXNlZCBm
b3IgdGhlIFRFVy04MTBEUiBhbHNvIGFwcGx5IHRvIHRoZQpESVItODEwTD8KPgo+PiArZW5kZWYK
Pj4gK1RBUkdFVF9ERVZJQ0VTICs9IHRyZW5kbmV0X3Rldy04MTBkcgo+PiArCj4+ICBkZWZpbmUg
RGV2aWNlL3ZvbmV0c192YXIxMW4tMzAwCj4+ICAgIFNPQyA6PSBtdDc2MjBuCj4+ICAgIElNQUdF
X1NJWkUgOj0gMzc3NmsKPj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIw
L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yawo+PiBiL3RhcmdldC9saW51eC9yYW1p
cHMvbXQ3NjIwL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yawo+PiBpbmRleCA3Mzk3
ZGRjYzJjLi5hMWIzZjRiZDBjIDEwMDc1NQo+PiAtLS0gYS90YXJnZXQvbGludXgvcmFtaXBzL210
NzYyMC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKPj4gKysrIGIvdGFyZ2V0L2xp
bnV4L3JhbWlwcy9tdDc2MjAvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCj4+IEBA
IC0yNTUsNyArMjU1LDggQEAgcmFtaXBzX3NldHVwX21hY3MoKQo+Cj5Zb3UgbmVpdGhlciBzZXQg
dXAgdGhlIExFRHMgbm9yIHRoZSBzd2l0Y2guCj4KPlNvLCB0aGVyZSdzIHN0aWxsIGEgbG90IHRv
IGRvLgo+Cj5CZXN0Cj4KPkFkcmlhbgo+Cj4+ICAJYWxmYS1uZXR3b3JrLGFjMTIwMHJtfFwKPj4g
IAlkbGluayxkaXItODEwbHxcCj4+ICAJcGhpY29tbSxwc2cxMjE4YXxcCj4+IC0JcGhpY29tbSxw
c2cxMjE4YikKPj4gKwlwaGljb21tLHBzZzEyMThifFwKPj4gKwl0cmVuZG5ldCx0ZXctODEwZHIp
Cj4+ICAJCXdhbl9tYWM9JChtYWNhZGRyX2FkZCAiJChtdGRfZ2V0X21hY19iaW5hcnkgZmFjdG9y
eQo+PiAweDI4KSIgMSkKPj4gIAkJOzsKPj4gIAlhbGZhLW5ldHdvcmsscjM2bS1lNGd8XAo+PiAt
LQo+PiAyLjIwLjEKPj4KPj4gLS0KPj4gSi4gU2NvdHQgSGVwcGxlcgo+Pgo+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdAo+PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+IGh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCj4KCi0tIApK
LiBTY290dCBIZXBwbGVyCgpQZW5ndWluIElubm92YXRpb25zCgotIC0gLSAtIC0gLSAtIC0gLSAt
IC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAKCgpOT1RJQ0U6
IFRoaXMgZS1tYWlsIG1lc3NhZ2UgYW5kIGFueSBhdHRhY2htZW50cyBtYXkKY29udGFpbiBsZWdh
bGx5IHByaXZpbGVnZWQgYW5kIGNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbiBpbnRlbmRlZApzb2xl
bHkgZm9yIHRoZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudHMuIElmIHlvdSBhcmUgbm90
IGFuCmludGVuZGVkIHJlY2lwaWVudCwgeW91IGFyZSBoZXJlYnkgbm90aWZpZWQgdGhhdCB5b3Ug
aGF2ZQpyZWNlaXZlZCB0aGlzIG1lc3NhZ2UgaW4gZXJyb3IgYW5kIGFueSByZXZpZXcsIGRpc3Nl
bWluYXRpb24sCmRpc3RyaWJ1dGlvbiwgY29weWluZywgb3Igb3RoZXIgdW5hdXRob3JpemVkIHVz
ZSBvZiB0aGlzIGVtYWlsCmFuZCBhbnkgYXR0YWNobWVudCBpcyBzdHJpY3RseSBwcm9oaWJpdGVk
LiBJZiB5b3UgaGF2ZSByZWNlaXZlZAp0aGlzIGVtYWlsIGluIGVycm9yLCBwbGVhc2Ugbm90aWZ5
IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kCmRlbGV0ZSB0aGUgbWVzc2FnZSBhbmQgYW55IGF0
dGFjaG1lbnRzIGZyb20geW91ciBzeXN0ZW0uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
