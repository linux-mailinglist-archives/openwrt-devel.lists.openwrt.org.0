Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 797C4190C09
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 12:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WlAlIi1+LnmN47IGTkUX8l41XWqjkVcg+FeJJe8KQdg=; b=Gn2dwjMQDpHMduQj7ohP5h+/N
	JzSAxsmRQC0GU1H3U0Hi5DBPIA4xlSr0qdcZw5vzKNSbVXf/tKUesvln6CGe0l80ma85uLri5aXYA
	7aYoil6NnM91QJvZJWTxq2IM4cuRiVb0j8bHSyI+iZJTf+OiyIfOZ/FZeuq80PSvlfTSKD3cfLENf
	farTmH1BgyE/EiOUDIeIUEtzs7RRBrJaAXMDZ/a7D6s5D9Mr+7QsDkq1Z6GFWBRhcY70gFLpPNGr7
	2qrY8Sp67PnjDoT0JrFa2houoD6DcRkFXok64A2dbYywUBJlNSJ5gR2ozg6+4WboFDhwO0SCbeH89
	QTdXVMjAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhRu-0005Lo-G7; Tue, 24 Mar 2020 11:10:22 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhRg-0004ib-Hb
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 11:10:10 +0000
Received: from [46.59.223.225] (helo=[192.168.178.73])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jGhRd-0004N7-02; Tue, 24 Mar 2020 12:10:06 +0100
To: =?UTF-8?B?T2xkxZlpY2ggSmVkbGnEjWth?= <oldium.pro@gmail.com>,
 Daniel Golle <daniel@makrotopia.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <158474142263.17958.4879845413668815555@git-01.infra.openwrt.org>
 <mailman.40429.1584741427.2486.lede-commits@lists.infradead.org>
From: John Crispin <john@phrozen.org>
Message-ID: <caae2a33-08b7-66e3-4218-ac2a92ef703b@phrozen.org>
Date: Tue, 24 Mar 2020 12:10:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <mailman.40429.1584741427.2486.lede-commits@lists.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_041008_743549_E7DAC095 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [openwrt/openwrt] mac80211: do not try to setup
 hostapd-managed interfaces.
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

SGkKYmVsb3cgY29tbWl0IGJyZWFrcyB3aWZpIHJlY29uZiBmZWF0dXJlIGFuZCB0byBiZSBob25l
c3QgaXQgbG9va3MgbGlrZSAKdGhlIHdyb25nIGZpeCB0byBtZS4KCUpvaG4KCgo+IGRhbmdvbGUg
cHVzaGVkIGEgY29tbWl0IHRvIG9wZW53cnQvb3BlbndydC5naXQsIGJyYW5jaCBtYXN0ZXI6Cj4g
aHR0cHM6Ly9naXQub3BlbndydC5vcmcvMjNhODg1YmY4OWEyMDRmOTFlNGYxN2VkOTZmMWE5ZmM3
ZjUwZWEzNAo+IAo+IGNvbW1pdCAyM2E4ODViZjg5YTIwNGY5MWU0ZjE3ZWQ5NmYxYTlmYzdmNTBl
YTM0Cj4gQXV0aG9yOiBPbGTFmWljaCBKZWRsacSNa2EgPG9sZGl1bS5wcm9AZ21haWwuY29tPgo+
IEF1dGhvckRhdGU6IE1vbiBNYXIgMTYgMjE6MDA6NTEgMjAyMCArMDEwMAo+IAo+ICAgICAgbWFj
ODAyMTE6IGRvIG5vdCB0cnkgdG8gc2V0dXAgaG9zdGFwZC1tYW5hZ2VkIGludGVyZmFjZXMuCj4g
ICAgICAKPiAgICAgIEZvciB2aXJ0dWFsIGFjY2VzcyBwb2ludHMgKHdoZW4gbXVsdGlwbGUgU1NJ
RHMgYXJlIHVzZWQgZm9yIG9uZQo+ICAgICAgcGh5c2ljYWwgQVApLCB0aGVyZSBleGlzdCBvbmUg
cGh5c2ljYWwgbmV0d29yayBpbnRlcmZhY2UgYW5kCj4gICAgICBtdWx0aXBsZSB2aXJ0dWFsIGlu
dGVyZmFjZXMsIHdoaWNoIGFyZSBmdWxseSB1bmRlciBjb250cm9sIG9mCj4gICAgICBob3N0YXBk
LiBXaGVuIG5ldHdvcmtpbmcgaXMgc2V0dXAsIHRoZSBzY3JpcHQKPiAgICAgIGAvbGliL25ldGlm
ZC93aXJlbGVzcy9tYWM4MDIxMS5zaGAgaXMgY2FsbGVkLCB3aGljaCB0cmllcyB0byBicmluZwo+
ICAgICAgdGhlIGludGVyZmFjZSB1cCBieSBhIGNhbGwgdG8gYGlwIGxpbmsgc2V0IGRldiA8aWZh
Y2U+IHVwYC4gVGhpcwo+ICAgICAgY2FsbCBtaWdodCBmYWlsIGZvciB2aXJ0dWFsIEFQcywgYmVj
YXVzZSB0aGUgdmlydHVhbCBpbnRlcmZhY2UKPiAgICAgIG1pZ2h0IG5vdCBoYXZlIGJlZW4gY3Jl
YXRlZCBieSBob3N0YXBkIHlldC4gVGhlcmUgYXJlIHNvbWUgYXJ0aWZpY2FsCj4gICAgICBkZWxh
eXMgaW4gdGhlIHNjcmlwdCBtb3N0IHByb2JhYmx5IHRvIGhhbmRsZSB0aGlzLCBidXQgd2hlbiBE
RlMKPiAgICAgIGNoYW5uZWwgYXZhaWxhYmlsaXR5IGNoZWNrIG9uIDVHSHogYmFuZCBpcyBpc3N1
ZWQsIGhvc3RhcGQgY2FuCj4gICAgICBkZWxheSBjcmVhdGluZyB2aXJ0dWFsIGludGVyZmFjZXMg
YnkgYSBtaW51dGUuCj4gICAgICAKPiAgICAgIEluIG9yZGVyIHRvIGZpeCB0aGlzIChvciB3b3Jr
IGFyb3VuZCBpdCksIGRvIG5vdCB0cnkgdG8gYnJpbmcgdGhlCj4gICAgICBpbnRlcmZhY2UgdXAg
KHRoaXMgaXMgcmVzcG9uc2liaWxpdHkgb2YgaG9zdGFwZCBhbnl3YXkpIGFuZAo+ICAgICAgZG8g
bm90IHRyeSB0byBzZXQgdHhwb3dlciBvbiB0aGUgdmlydHVhbCBpbnRlcmZhY2UuCj4gICAgICAK
PiAgICAgIEZpeGVzIEZTIzI2OTguCj4gICAgICAKPiAgICAgIFNpZ25lZC1vZmYtYnk6IE9sZMWZ
aWNoIEplZGxpxI1rYSA8b2xkaXVtLnByb0BnbWFpbC5jb20+Cj4gLS0tCj4gICAuLi4vbWFjODAy
MTEvZmlsZXMvbGliL25ldGlmZC93aXJlbGVzcy9tYWM4MDIxMS5zaCAgICAgfCAxOCArKysrKysr
KysrKy0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA3IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9wYWNrYWdlL2tlcm5lbC9tYWM4MDIxMS9maWxlcy9s
aWIvbmV0aWZkL3dpcmVsZXNzL21hYzgwMjExLnNoIGIvcGFja2FnZS9rZXJuZWwvbWFjODAyMTEv
ZmlsZXMvbGliL25ldGlmZC93aXJlbGVzcy9tYWM4MDIxMS5zaAo+IGluZGV4IGYyMjczMGM5ZmMu
LmY1OWM0OTgyMTUgMTAwNjQ0Cj4gLS0tIGEvcGFja2FnZS9rZXJuZWwvbWFjODAyMTEvZmlsZXMv
bGliL25ldGlmZC93aXJlbGVzcy9tYWM4MDIxMS5zaAo+ICsrKyBiL3BhY2thZ2Uva2VybmVsL21h
YzgwMjExL2ZpbGVzL2xpYi9uZXRpZmQvd2lyZWxlc3MvbWFjODAyMTEuc2gKPiBAQCAtNTMzLDYg
KzUzMyw3IEBAIG1hYzgwMjExX3ByZXBhcmVfdmlmKCkgewo+ICAgCj4gICAJCQlORVdBUExJU1Q9
IiR7TkVXQVBMSVNUfSRpZm5hbWUgIgo+ICAgCQkJWyAtbiAiJGhvc3RhcGRfY3RybCIgXSB8fCB7
Cj4gKwkJCQlhcF9pZm5hbWU9IiR7aWZuYW1lfSIKPiAgIAkJCQlob3N0YXBkX2N0cmw9IiR7aG9z
dGFwZF9jdHJsOi0vdmFyL3J1bi9ob3N0YXBkLyRpZm5hbWV9Igo+ICAgCQkJfQo+ICAgCQk7Owo+
IEBAIC03NTMsMTMgKzc1NCwxNSBAQCBtYWM4MDIxMV9zZXR1cF92aWYoKSB7Cj4gICAJanNvbl9n
ZXRfdmFyIHZpZl9lbmFibGUgZW5hYmxlIDEKPiAgIAo+ICAgCVsgIiR2aWZfZW5hYmxlIiA9IDEg
XSB8fCBhY3Rpb249ZG93bgo+IC0JbG9nZ2VyIGlwIGxpbmsgc2V0IGRldiAiJGlmbmFtZSIgJGFj
dGlvbgo+IC0JaXAgbGluayBzZXQgZGV2ICIkaWZuYW1lIiAiJGFjdGlvbiIgfHwgewo+IC0JCXdp
cmVsZXNzX3NldHVwX3ZpZl9mYWlsZWQgSUZVUF9FUlJPUgo+IC0JCWpzb25fc2VsZWN0IC4uCj4g
LQkJcmV0dXJuCj4gLQl9Cj4gLQlbIC16ICIkdmlmX3R4cG93ZXIiIF0gfHwgaXcgZGV2ICIkaWZu
YW1lIiBzZXQgdHhwb3dlciBmaXhlZCAiJHt2aWZfdHhwb3dlciUlLip9MDAiCj4gKwlpZiBbICIk
bW9kZSIgIT0gImFwIiBdIHx8IFsgIiRpZm5hbWUiID0gIiRhcF9pZm5hbWUiIF07IHRoZW4KPiAr
CQlsb2dnZXIgaXAgbGluayBzZXQgZGV2ICIkaWZuYW1lIiAkYWN0aW9uCj4gKwkJaXAgbGluayBz
ZXQgZGV2ICIkaWZuYW1lIiAiJGFjdGlvbiIgfHwgewo+ICsJCQl3aXJlbGVzc19zZXR1cF92aWZf
ZmFpbGVkIElGVVBfRVJST1IKPiArCQkJanNvbl9zZWxlY3QgLi4KPiArCQkJcmV0dXJuCj4gKwkJ
fQo+ICsJCVsgLXogIiR2aWZfdHhwb3dlciIgXSB8fCBpdyBkZXYgIiRpZm5hbWUiIHNldCB0eHBv
d2VyIGZpeGVkICIke3ZpZl90eHBvd2VyJSUuKn0wMCIKPiArCWZpCj4gICAKPiAgIAljYXNlICIk
bW9kZSIgaW4KPiAgIAkJbWVzaCkKPiBAQCAtOTI0LDYgKzkyNyw3IEBAIGRydl9tYWM4MDIxMV9z
ZXR1cCgpIHsKPiAgIAo+ICAgCWhhc19hcD0KPiAgIAlob3N0YXBkX2N0cmw9Cj4gKwlhcF9pZm5h
bWU9Cj4gICAJaG9zdGFwZF9ub3NjYW49Cj4gICAJZm9yX2VhY2hfaW50ZXJmYWNlICJhcCIgbWFj
ODAyMTFfY2hlY2tfYXAKPiAgIAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gbGVkZS1jb21taXRzIG1haWxpbmcgbGlzdAo+IGxlZGUtY29tbWl0
c0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9sZWRlLWNvbW1pdHMKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
