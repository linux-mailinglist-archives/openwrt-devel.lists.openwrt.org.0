Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5506011F4EC
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 23:39:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:MIME-Version:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TqqvLNzw6qAOFLlvqCU0aHUCXz0YNM+EJNzUavxs0C4=; b=r8Dwhg7wIaHwf5N5ecgrXe6J7
	29y+Itk+L7yspYK31X4+Kvskic0yb72ptmyaZ+6iijA/Mw3MUNOQZzQGF/A0vCpUONY1oaDIOBqcB
	+c4Z3YQMiB2lRh5Bz8w4tG+2YK7V4gSUiVp2PglCNJmFnnN6cuT8Wfneu2IfEhskyX4hGOOOtfJzB
	NlOGxKGRdwAzAkz2Z7sYo7qFnkQBAswTk8yDHVH5f1tY2+JPCz5y55dY0kdiOdT8O5J85SGFL1VvX
	nQI5qL8hdAQkAbyrehB9iAPMY82inqWJKGmE/BZt6Rh4GGs3xZru3NRkl/32UN3QjXLCRYEzyWR4e
	/UuYg8ELA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igG4O-0007H3-QR; Sat, 14 Dec 2019 22:39:28 +0000
Received: from linuxlounge.net ([2a01:4f8:c0c:76::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igG4D-0007FY-CI
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 22:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=darmstadt.freifunk.net;
 s=mail; t=1576363154;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mk7SAZkeEFdhXchFT88Ty70hegINQd7oVPXUphHP5P8=;
 b=o6adrmhh+j0y8etwp2gJd8SUY5GYD+dhLBdPcqRohR7kecWYAi9aac9Brc1LNy8PM1I75Q
 hLJwcdp9ObOInHoIbPTiAZhy07q4w5ArkHw5/BRWKdmZ5JeYBcaLIq4Nbe75G+WfnvjqQE
 R8Yo9X6ikW64qc8MFsZxXYAhPUcxSfdIGvo8X3MoarNq1HYBCSHuwOD3i6UZSO64MwN4vk
 jxgpNfEm6qXL79KuamUbyPkFuQwR+S5uKAiuKOq9wP0tP6FNJjPyj4piCRN9TTh82aqVqB
 1i56eg2KiBUtO6pElBWuB7wlhuke5cTOuW4JBgb7gr2THrjh7i8zjl50FKthDA==
To: David Bauer <mail@david-bauer.net>, openwrt-devel@lists.openwrt.org
References: <20191214223802.184696-1-mail@david-bauer.net>
From: Martin Weinelt <martin@darmstadt.freifunk.net>
Message-ID: <ab5e7587-dbe8-6c1f-191d-6ef85a29562c@darmstadt.freifunk.net>
Date: Sat, 14 Dec 2019 23:39:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
In-Reply-To: <20191214223802.184696-1-mail@david-bauer.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_143918_005543_8F0F3C43 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:c0c:76:0:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] mac80211: fix txpower when using DFS
 channels
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
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

WWVwLCB0aGF0IGRvZXMgdGhlIHRyaWNrLiBUaGFuayB5b3UhCgpUZXN0ZWQtYnk6IE1hcnRpbiBX
ZWluZWx0IDxtYXJ0aW5AZGFybXN0YWR0LmZyZWlmdW5rLm5ldD4KCk9uIDEyLzE0LzE5IDExOjM4
IFBNLCBEYXZpZCBCYXVlciB3cm90ZToKPiBXaXRoIHRoaXMgcGF0Y2gsIHR4cG93ZXIgZm9yIHRo
ZSBQSFkgaXMgYXBwbGllZCB3aGVuIGNvbmZpZ3VyaW5nIHRoZSBQSFkKPiBpbnN0ZWFkIG9mIHRo
ZSBWSUYuIE90aGVyd2lzZSwgdGhlIGNvbmZpZ3VyZWQgdHhwb3dlciBpcyBub3QgYXBwbGllZCBm
b3IKPiB0aGUgZmlyc3QgaW5pdGlhbGl6ZWQgVklGIHdoZW4gdXNpbmcgREZTIGNoYW5uZWxzLCBh
cyBpdCBpcyBjdXJyZW50bHkKPiBhcHBsaWVkIHRvIGVhcmx5IHdoZW4gdGhlIENBQyBoYXNuJ3Qg
ZmluaXNoZWQuCj4gCj4gUmVwb3J0ZWQtYnk6IE1hcnRpbiBXZWluZWx0IDxtYXJ0aW5AZGFybXN0
YWR0LmZyZWlmdW5rLm5ldAo+IFNpZ25lZC1vZmYtYnk6IERhdmlkIEJhdWVyIDxtYWlsQGRhdmlk
LWJhdWVyLm5ldD4KPiAtLS0KPiAgIC4uLi9tYWM4MDIxMS9maWxlcy9saWIvbmV0aWZkL3dpcmVs
ZXNzL21hYzgwMjExLnNoICAgICAgIHwgOSArKysrKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3BhY2thZ2Uv
a2VybmVsL21hYzgwMjExL2ZpbGVzL2xpYi9uZXRpZmQvd2lyZWxlc3MvbWFjODAyMTEuc2ggYi9w
YWNrYWdlL2tlcm5lbC9tYWM4MDIxMS9maWxlcy9saWIvbmV0aWZkL3dpcmVsZXNzL21hYzgwMjEx
LnNoCj4gaW5kZXggMTgwMzNlOWQ1Ni4uZjE4ODJlYzUwOSAxMDA2NDQKPiAtLS0gYS9wYWNrYWdl
L2tlcm5lbC9tYWM4MDIxMS9maWxlcy9saWIvbmV0aWZkL3dpcmVsZXNzL21hYzgwMjExLnNoCj4g
KysrIGIvcGFja2FnZS9rZXJuZWwvbWFjODAyMTEvZmlsZXMvbGliL25ldGlmZC93aXJlbGVzcy9t
YWM4MDIxMS5zaAo+IEBAIC03NDMsNyArNzQzLDcgQEAgbWFjODAyMTFfc2V0dXBfdmlmKCkgewo+
ICAgCj4gICAJanNvbl9zZWxlY3QgY29uZmlnCj4gICAJanNvbl9nZXRfdmFycyBtb2RlCj4gLQlq
c29uX2dldF92YXIgdmlmX3R4cG93ZXIgdHhwb3dlcgo+ICsJanNvbl9nZXRfdmFyIHZpZl90eHBv
d2VyCj4gICAJanNvbl9nZXRfdmFyIHZpZl9lbmFibGUgZW5hYmxlIDEKPiAgIAo+ICAgCVsgIiR2
aWZfZW5hYmxlIiA9IDEgXSB8fCBhY3Rpb249ZG93bgo+IEBAIC03NTMsNyArNzUzLDYgQEAgbWFj
ODAyMTFfc2V0dXBfdmlmKCkgewo+ICAgCQlqc29uX3NlbGVjdCAuLgo+ICAgCQlyZXR1cm4KPiAg
IAl9Cj4gLQlzZXRfZGVmYXVsdCB2aWZfdHhwb3dlciAiJHR4cG93ZXIiCj4gICAJWyAteiAiJHZp
Zl90eHBvd2VyIiBdIHx8IGl3IGRldiAiJGlmbmFtZSIgc2V0IHR4cG93ZXIgZml4ZWQgIiR7dmlm
X3R4cG93ZXIlJS4qfTAwIgo+ICAgCj4gICAJY2FzZSAiJG1vZGUiIGluCj4gQEAgLTkwOCw2ICs5
MDcsMTIgQEAgZHJ2X21hYzgwMjExX3NldHVwKCkgewo+ICAgCWl3IHBoeSAiJHBoeSIgc2V0IGFu
dGVubmFfZ2FpbiAkYW50ZW5uYV9nYWluCj4gICAJaXcgcGh5ICIkcGh5IiBzZXQgZGlzdGFuY2Ug
IiRkaXN0YW5jZSIKPiAgIAo+ICsJaWYgWyAtbiAiJHR4cG93ZXIiIF07IHRoZW4KPiArCQlpdyBw
aHkgIiRwaHkiIHNldCB0eHBvd2VyIGZpeGVkICIke3R4cG93ZXIlJS4qfTAwIgo+ICsJZWxzZQo+
ICsJCWl3IHBoeSAiJHBoeSIgc2V0IHR4cG93ZXIgYXV0bwo+ICsJZmkKPiArCj4gICAJWyAtbiAi
JGZyYWciIF0gJiYgaXcgcGh5ICIkcGh5IiBzZXQgZnJhZyAiJHtmcmFnJSUuKn0iCj4gICAJWyAt
biAiJHJ0cyIgXSAmJiBpdyBwaHkgIiRwaHkiIHNldCBydHMgIiR7cnRzJSUuKn0iCj4gICAKPiAK
Ci0tIApVbmQgaW0gw7xicmlnZW4gYmluIGljaCBkZXIgTWVpbnVuZywgZGFzcyBHZXLDpHRlIG1p
dCB3ZW5pZ2VyIGFscyA4TUIgCkZsYXNoIHVuZCA2NE1CIFJBTSB6ZXJzdMO2cnQgd2VyZGVuIG3D
vHNzZW4uCi0tIGZyZWkgbmFjaCBNYXJjdXMgUG9yY2lvdXMgQ2F0byBkZXIgw4RsdGVyZQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
