Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF47B70D83
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 01:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=02Sdory5tzJJRIl3EUHl/BY8XkEeVDYhlYUL4fWDLj4=; b=Cx4
	8r9Yf0gGYVnziUVrlGj+9PH+aOv7YbUp7ZTsKT/E3298CA4vZNFEIneZtyLeIyM7W/M8etvqi/LJq
	j1Lju92qszoxC3WRTCNuHQHe9VeaaOPyfqG1pEQY+yFe1G0p7MotSPywdKH5hyDjjeKL3dUFNLjy6
	txrchcES6DFZsePJvYNDFOTQ9epDk30uw9QDoOVHNGpFsPAVRNE+pN3GLdl+Xt1P/0XU0OE3pcJHF
	lNr1DVSpxCwPI237/a61PCe/iicRAAmSzqY80eyHBN4nfl7MaK/KIeH2HlygKXwDiKEw+CysJqsVK
	pWl6QfHqucdRZE/PkUPtfBkzzbCnXXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hphwR-00024W-TZ; Mon, 22 Jul 2019 23:42:04 +0000
To: openwrt-devel@lists.openwrt.org
Date: Tue, 23 Jul 2019 02:41:22 +0300
MIME-Version: 1.0
Message-ID: <mailman.10634.1563838892.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?b?0J/RkdGC0YAg0JrRg9C30L3QtdGG0L7QsiB2aWEgb3BlbndydC1kZXZlbA==?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?UTF-8?B?0J/RkdGC0YAg0JrRg9C30L3QtdGG0L7Qsg==?=
 <kuznetsovtiubg@mail.ru>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] =?utf-8?b?0J/RgNC+0LTQstC40LbQtdC90LjQtSDRgdCw?=
 =?utf-8?b?0LnRgtC+0LIg0LIg0L/QvtC40YHQutC+0LLQvtC5INGB0YLQsNGA0L3QuNGG?=
 =?utf-8?b?0LggeWFuZGV4INC4ICDQs9GD0LPQuy4g0KPQu9GD0YfRiNC10LvQuCDQvdC1?=
 =?utf-8?b?INC80LXQvdC40LUgMjE0INC/0YDQvtC10LrRgtC+0LLinZM=?=
Content-Type: multipart/mixed; boundary="===============7790025711875808540=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============7790025711875808540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7790025711875808540==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from f364.i.mail.ru ([217.69.141.6])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hphvs-00023k-Qt
	for openwrt-devel@lists.openwrt.org; Mon, 22 Jul 2019 23:41:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail2;
	h=Content-Type:Message-ID:Reply-To:Date:MIME-Version:Subject:To:From; bh=J+BnD510gwpyKl+YLuJf+cBWB0KU4LURdeyoqAJtAUY=;
	b=dyzESOlxDmjUuc+Ojar9ve7vaUH97oTyUOe6np6cmPlc2qoy4Tf27kej182UAcheWfmNdQWqTW3oN3jmCiTBQ7SAKKiEdL81Ivg3aAfrtH1qRK3c4fKMwkQ5QANBpKsr8ECxeHtJdBbezl3SVHxhDKLhAm8Cfzy+JL42UanoW14=;
Received: by f364.i.mail.ru with local (envelope-from <kuznetsovtiubg@mail.ru>)
	id 1hphvm-0002Ik-W0
	for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 02:41:23 +0300
Received: by e.mail.ru with HTTP;
	Tue, 23 Jul 2019 02:41:22 +0300
From: =?UTF-8?B?0J/RkdGC0YAg0JrRg9C30L3QtdGG0L7Qsg==?= <kuznetsovtiubg@mail.ru>
To: openwrt-devel@lists.openwrt.org
Subject: =?UTF-8?B?0J/RgNC+0LTQstC40LbQtdC90LjQtSDRgdCw0LnRgtC+0LIg0LIg0L/QvtC4?=
 =?UTF-8?B?0YHQutC+0LLQvtC5INGB0YLQsNGA0L3QuNGG0LggeWFuZGV4INC4ICDQs9GD?=
 =?UTF-8?B?0LPQuy4g0KPQu9GD0YfRiNC10LvQuCDQvdC1INC80LXQvdC40LUgMjE0INC/?=
 =?UTF-8?B?0YDQvtC10LrRgtC+0LLinZM=?=
MIME-Version: 1.0
X-Mailer: Mail.Ru Mailer 1.0
Date: Tue, 23 Jul 2019 02:41:22 +0300
Reply-To: =?UTF-8?B?0J/RkdGC0YAg0JrRg9C30L3QtdGG0L7Qsg==?= <kuznetsovtiubg@mail.ru>
X-Priority: 3 (Normal)
Message-ID: <1563838882.404656699@f364.i.mail.ru>
Content-Type: multipart/alternative;
	boundary="--ALT--rfPF85eQE7hmQJH759FnCCYxJIkhytqR1563838882"
Authentication-Results: f364.i.mail.ru; auth=pass smtp.auth=kuznetsovtiubg@mail.ru smtp.mailfrom=kuznetsovtiubg@mail.ru
X-77F55803: 05347209EA37831A9110AD76CAB125BE1394E6FE967086ADB90990BE48C459DB74D19432984E3248E4DF6F562A93AC5E
X-7FA49CB5: 70AAF3C13DB7016878DA827A17800CE73E5BD39FFBD36926C4224003CC836476372387FC2D59589D8638F802B75D45FFA18204E546F3947C1EBB664C0FED7522AC83A81C8FD4AD23E2E44EFD321A7F275571747095F342E85644E22E05AA81AEE6DE07D961CB05C2FD0D26C6B8FDB73B5644E22E05AA81AE52120BFB3F63BC1840A5AABA2AD371197C6FB206A91F05B29697E684531EC778B8BF34A09043546BAA867293B0326636D2E47CDBA5A96583C09775C1D3CA48CFCA5A41EBD8A3A0199FA2833FD35BB23D2EF20D2F80756B5F40A5AABA2AD37119CC7F00164DA146DA9985D098DBDEAEC8EDCF5861DED71B2F389733CBF5DBD5E9B5C8C57E37DE458B4C7702A67D5C33162DBA43225CD8A89F057D9580FFC95018ADA56F4D8425AC300FCBF78E95C98AA043847C11F186F3C5E7DDDDC251EA7DABCC89B49CDF41148FAA8C27BEB3E8C9D53B503F486389A921A5CC5B56E945C8DA
X-Mailru-MI: 800
X-Mailru-Sender: F9A95FEF70EEB576447E3DB240998FC96F6293EC7F80CAC0C3313A7CDE8EA2EEE848328A097E3C1F21CEA124291B205B0F6BE74996F9956B8BEE8C7689A2BD634B72B4537F25B8C7F4766027A227D6FC1DBE27DEEA936E1D4978177693FF3C735606FB17F7740DE20D4ABDE8C577C2ED
X-Mras: OK
X-Spam: undefined
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_164129_246494_B520053C 
X-CRM114-Status: UNSURE (  -1.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [217.69.141.6 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (kuznetsovtiubg[at]mail.ru)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
  2.3 MIXED_ES               Too many es are not es


----ALT--rfPF85eQE7hmQJH759FnCCYxJIkhytqR1563838882
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

0JzQvtGRINC/0L7Rh9GC0LXQvdC40LUgLCDRjyDQvtC/0YvRgtC90YvQuSBzZW8g0LzQsNGB0YLQ
sNC6LiAKwqAK0J7RgdC90L7QstC+0L/QvtC70LDQs9Cw0Y7RidC40Lkg0L/RgNC40L7RgNC40YLQ
tdGCIH4g0LTQvtC70LPQvtCy0YDQtdC80LXQvdC90YvQtSDRgtC+0LLQsNGA0LjRidC10YHQutC4
0LUg0LLQt9Cw0LjQvNC+0L7RgtC90L7RiNC10L3QuNGPICwg0Lgg0L/QvtGC0L7QvNGDINGPINCz
0L7RgNCx0LDRh9GD0YHRjCDQvdCwINGP0LTQtdGA0L3Ri9C5INC40YLQvtCzLgrQkiDQtNCw0L3Q
vdC+0Lkg0L3QuNGI0LUg0LfQsNC90LjQvNCw0Y7RgdGMINCx0L7Qu9C40LUgOS3RgtC4INCz0L7Q
tCzQsiDRgdCy0Y/Qt9C4INGBINGN0YLQuNC8INC/0L4g0LLQvtC/0YDQvtGB0YMg0LrQsNGH0LXR
gdGC0LLQsCDQvdC1INGC0YDQtdCx0YPQtdGC0YHRjyDQsdC+0Y/RgtGM0YHRjy4K0KHQv9C10YbQ
uNCw0LvQuNC30LjRgNGD0Y7RgdGMINCyINCy0L7Qt9GA0LDRgdGC0LDQvdC40LUg0LvQtdC90LTQ
uNC90LPQvtCyLsKgIArQldGB0YLRjCDQvtCz0YDQvtC80L3QvtC1INC60L7Qu9C40YfQtdGB0YLQ
stC+INGA0LXRhtC10L3Qt9C40Lks0Lgg0LrQvtC90LrRgNC10YLQvdGL0LUg0LjQu9C70Y7RgdGC
0YDQsNGG0LjQuCDQu9C40YfQvdGL0YUg0YDQsNCx0L7Rgi4K0KHRgtCw0LTQuNC4INGA0LDQsdC+
0YJ+0L3QsNGB0YLRgNCw0LjQstCw0Y7RgtGB0Y8g0L3QsCDQutCw0LbQtNGL0Lkg0YHQsNC50YIg
0LjQvdC00LjQstC40LTRg9Cw0LvRjNC90L4g0LjCoCDQvtCx0YPRgdC70L7QstC70LjQstCw0LXR
gtGB0Y8g0LrQsNC6INC+0YIg0LLRi9C00LXQu9C10L3QvdGL0YUg0YTQuNC90LDQvdGB0L7QsjvR
gtCw0Log0Lgg0L7RgiDQv9C+0YHRgtCw0LLQu9C10L3QvdGL0YUg0YbQtdC70LXQuS4KwqAK0J7Q
tNC90LDQutC+INGC0L7Qu9GM0LrQviDRgdC+0L/RgNGP0LbQtdC90L3Ri9C5INC/0L7QtNGF0L7Q
tCDQuiDQstGL0LTQstC40LbQtdC90LjRjiAtINC/0L7RgdC/0L7RgdC+0LHRgdGC0LLRg9C10YIg
0LLQsNC8INC90LAg0YHQvtCy0LXRgdGC0Ywg0YHQtNCy0LjQvdGD0YLRjCDQv9GA0L7QtdC60YIg
0L/Rg9GB0YLRjCDQtNCw0LbQtSDQv9C+INGB0LDQvNGL0Lwg0YLRgNGD0LTQvdGL0Lwg0LrQu9GO
0YfQtdCy0LjQutCw0LwuwqAgCtCU0L4g0LzQtdC70YzRh9Cw0LnRiNC40YUg0L/QvtC00YDQvtCx
0L3QvtGB0YLQtdC5INC4INC/0YDQvtGB0YLRi9C80Lgg0YHQu9C+0LLQsNC80Lgg0YDQsNGB0LrR
gNGL0LLQsNGOLCDRh9GC0L4g0Y8g0LTQtdC70LDRjgrCoArQn9C10YDQstCw0Y8g0LPQsNGA0LDQ
vdGC0LjRjyDQsiDQodC10L4gfiDRjdGC0L4g0YPQstC10YDQtdC90L3Ri9C5LNC+0LHRj9C30LDR
gtC10LvRjNC90YvQudC/0YDQuNGA0L7RgdGCINC40L3RgtC10YDQvdC10YIg0YLRgNCw0YTQuNC6
0LAg0YLQsNC6INC20LUg0L/QvtGB0LXRidCw0LXQvNC+0YHRgtC4LsKgIAor0YHQtdC8IC0g0LTQ
tdCy0Y/RgtGMwqAgMSDQv9GP0YLRjC3QniB+INGB0LXQvCB+IDnCoCDRiNC10YHRgtGMwqAgNsKg
IDQgfiA5CsKgCu+7v1doYXQga2luZCBvZiBndWVzdHMsIEkgYW0gYSBza2lsbGVkIHNlbyBtYW4u
CsKgCkdlbmVyYWwgcHJpbWFjeSBpcyBhIGxvbmcgbm9ybWFsIHJlbGF0aW9uc2hpcCBmcm9tIHRo
aXMsIEkgcGxvdyBmb3Igc2NyYXAgZWZmZWN0LgrCoApJbiB0aGlzIGZpZWxkLCBwdWZmaW5nIGlz
IGEgOS15ZWFyLW9sZCB3aXRoIHJlZ2FyZCB0byBxdWFsaXR5LCB0aGVyZSBpcyBubyBuZWVkIHRv
IGJlIGFmcmFpZC4KSSBzcGVjaWFsaXplIGluIHRoZSBpbmNyZWFzaW5nIG9mIGxhbmRpbmcgcGFn
ZXMuClRoZXJlIGFyZSBtYW55IHJldmlld3MgYXZhaWxhYmxlLCBhbmQgYWN0dWFsIGV4YW1wbGVz
IG9mIHBlcnNvbmFsIHNpdGVzLgpab25lcyBvZiB3b3JrcyB+IGFyZSBjb25maWd1cmVkIG9uIGVh
Y2ggd2Vic2l0ZSBpbmRpdmlkdWFsbHkgYW5kIGFyZSBkZXRlcm1pbmVkIGFzIGZyb20gdGhlIGFs
bG9jYXRlZCBmaW5hbmNlOyBmcm9tIHRoZSBwcm9wb3NlZCBjb25kaXRpb25zLgrCoApPbmx5IGFu
IGludGVncmF0aXZlIGFwcHJvYWNoIHRvIGdyb3d0aCB+IHdpbGwgbWFrZSBpdCBlYXNpZXIgZm9y
IHlvdSB0byBwdXNoIHRoZSBwcm9qZWN0IHRocm91Z2ggZXZlbiBleHRyZW1lIGtleXdvcmRzLgpJ
IGRlc2NyaWJlIGluIG1vcmUgZGV0YWlsIGFuZCBzaW1wbGUgcGhyYXNlcyBob3cgSSB3aWxsIGRv
CsKgClRoZSBtYWluIGd1YXJhbnRlZSBvZiBzZW8gaXMgYSB3aW5uaW5nLCBzeXN0ZW1hdGljIGlu
Y3JlYXNlIGluIEludGVybmV0IHRyYWZmaWMgYW5kIGF0dGVuZGFuY2UuCgo=

----ALT--rfPF85eQE7hmQJH759FnCCYxJIkhytqR1563838882
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

CjxIVE1MPjxCT0RZPtCc0L7RkSDQv9C+0YfRgtC10L3QuNC1ICwg0Y8g0L7Qv9GL0YLQvdGL0Lkg
c2VvINC80LDRgdGC0LDQui4gPGJyPiZuYnNwOzxicj7QntGB0L3QvtCy0L7Qv9C+0LvQsNCz0LDR
jtGJ0LjQuSDQv9GA0LjQvtGA0LjRgtC10YIgfiDQtNC+0LvQs9C+0LLRgNC10LzQtdC90L3Ri9C1
INGC0L7QstCw0YDQuNGJ0LXRgdC60LjQtSDQstC30LDQuNC80L7QvtGC0L3QvtGI0LXQvdC40Y8g
LCDQuCDQv9C+0YLQvtC80YMg0Y8g0LPQvtGA0LHQsNGH0YPRgdGMINC90LAg0Y/QtNC10YDQvdGL
0Lkg0LjRgtC+0LMuCjxicj7QkiDQtNCw0L3QvdC+0Lkg0L3QuNGI0LUg0LfQsNC90LjQvNCw0Y7R
gdGMINCx0L7Qu9C40LUgOS3RgtC4INCz0L7QtCzQsiDRgdCy0Y/Qt9C4INGBINGN0YLQuNC8INC/
0L4g0LLQvtC/0YDQvtGB0YMg0LrQsNGH0LXRgdGC0LLQsCDQvdC1INGC0YDQtdCx0YPQtdGC0YHR
jyDQsdC+0Y/RgtGM0YHRjy4KPGJyPtCh0L/QtdGG0LjQsNC70LjQt9C40YDRg9GO0YHRjCDQsiDQ
stC+0LfRgNCw0YHRgtCw0L3QuNC1INC70LXQvdC00LjQvdCz0L7Qsi4mbmJzcDsgPGJyPtCV0YHR
gtGMINC+0LPRgNC+0LzQvdC+0LUg0LrQvtC70LjRh9C10YHRgtCy0L4g0YDQtdGG0LXQvdC30LjQ
uSzQuCDQutC+0L3QutGA0LXRgtC90YvQtSDQuNC70LvRjtGB0YLRgNCw0YbQuNC4INC70LjRh9C9
0YvRhSDRgNCw0LHQvtGCLgo8YnI+0KHRgtCw0LTQuNC4INGA0LDQsdC+0YJ+0L3QsNGB0YLRgNCw
0LjQstCw0Y7RgtGB0Y8g0L3QsCDQutCw0LbQtNGL0Lkg0YHQsNC50YIg0LjQvdC00LjQstC40LTR
g9Cw0LvRjNC90L4g0LgmbmJzcDsg0L7QsdGD0YHQu9C+0LLQu9C40LLQsNC10YLRgdGPINC60LDQ
uiDQvtGCINCy0YvQtNC10LvQtdC90L3Ri9GFINGE0LjQvdCw0L3RgdC+0LI70YLQsNC6INC4INC+
0YIg0L/QvtGB0YLQsNCy0LvQtdC90L3Ri9GFINGG0LXQu9C10LkuCjxicj4mbmJzcDs8YnI+0J7Q
tNC90LDQutC+INGC0L7Qu9GM0LrQviDRgdC+0L/RgNGP0LbQtdC90L3Ri9C5INC/0L7QtNGF0L7Q
tCDQuiDQstGL0LTQstC40LbQtdC90LjRjiAtINC/0L7RgdC/0L7RgdC+0LHRgdGC0LLRg9C10YIg
0LLQsNC8INC90LAg0YHQvtCy0LXRgdGC0Ywg0YHQtNCy0LjQvdGD0YLRjCDQv9GA0L7QtdC60YIg
0L/Rg9GB0YLRjCDQtNCw0LbQtSDQv9C+INGB0LDQvNGL0Lwg0YLRgNGD0LTQvdGL0Lwg0LrQu9GO
0YfQtdCy0LjQutCw0LwuJm5ic3A7IDxicj7QlNC+INC80LXQu9GM0YfQsNC50YjQuNGFINC/0L7Q
tNGA0L7QsdC90L7RgdGC0LXQuSDQuCDQv9GA0L7RgdGC0YvQvNC4INGB0LvQvtCy0LDQvNC4INGA
0LDRgdC60YDRi9Cy0LDRjiwg0YfRgtC+INGPINC00LXQu9Cw0Y4KPGJyPiZuYnNwOzxicj7Qn9C1
0YDQstCw0Y8g0LPQsNGA0LDQvdGC0LjRjyDQsiDQodC10L4gfiDRjdGC0L4g0YPQstC10YDQtdC9
0L3Ri9C5LNC+0LHRj9C30LDRgtC10LvRjNC90YvQudC/0YDQuNGA0L7RgdGCINC40L3RgtC10YDQ
vdC10YIg0YLRgNCw0YTQuNC60LAg0YLQsNC6INC20LUg0L/QvtGB0LXRidCw0LXQvNC+0YHRgtC4
LiZuYnNwOyA8YnI+K9GB0LXQvCAtINC00LXQstGP0YLRjCZuYnNwOyAxINC/0Y/RgtGMLdCeIH4g
0YHQtdC8IH4gOSZuYnNwOyDRiNC10YHRgtGMJm5ic3A7IDYmbmJzcDsgNCB+IDkKPGJyPiZuYnNw
Ozxicj7vu79XaGF0IGtpbmQgb2YgZ3Vlc3RzLCBJIGFtIGEgc2tpbGxlZCBzZW8gbWFuLgo8YnI+
Jm5ic3A7PGJyPkdlbmVyYWwgcHJpbWFjeSBpcyBhIGxvbmcgbm9ybWFsIHJlbGF0aW9uc2hpcCBm
cm9tIHRoaXMsIEkgcGxvdyBmb3Igc2NyYXAgZWZmZWN0Lgo8YnI+Jm5ic3A7PGJyPkluIHRoaXMg
ZmllbGQsIHB1ZmZpbmcgaXMgYSA5LXllYXItb2xkIHdpdGggcmVnYXJkIHRvIHF1YWxpdHksIHRo
ZXJlIGlzIG5vIG5lZWQgdG8gYmUgYWZyYWlkLgo8YnI+SSBzcGVjaWFsaXplIGluIHRoZSBpbmNy
ZWFzaW5nIG9mIGxhbmRpbmcgcGFnZXMuCjxicj5UaGVyZSBhcmUgbWFueSByZXZpZXdzIGF2YWls
YWJsZSwgYW5kIGFjdHVhbCBleGFtcGxlcyBvZiBwZXJzb25hbCBzaXRlcy4KPGJyPlpvbmVzIG9m
IHdvcmtzIH4gYXJlIGNvbmZpZ3VyZWQgb24gZWFjaCB3ZWJzaXRlIGluZGl2aWR1YWxseSBhbmQg
YXJlIGRldGVybWluZWQgYXMgZnJvbSB0aGUgYWxsb2NhdGVkIGZpbmFuY2U7IGZyb20gdGhlIHBy
b3Bvc2VkIGNvbmRpdGlvbnMuCjxicj4mbmJzcDs8YnI+T25seSBhbiBpbnRlZ3JhdGl2ZSBhcHBy
b2FjaCB0byBncm93dGggfiB3aWxsIG1ha2UgaXQgZWFzaWVyIGZvciB5b3UgdG8gcHVzaCB0aGUg
cHJvamVjdCB0aHJvdWdoIGV2ZW4gZXh0cmVtZSBrZXl3b3Jkcy4KPGJyPkkgZGVzY3JpYmUgaW4g
bW9yZSBkZXRhaWwgYW5kIHNpbXBsZSBwaHJhc2VzIGhvdyBJIHdpbGwgZG8KPGJyPiZuYnNwOzxi
cj5UaGUgbWFpbiBndWFyYW50ZWUgb2Ygc2VvIGlzIGEgd2lubmluZywgc3lzdGVtYXRpYyBpbmNy
ZWFzZSBpbiBJbnRlcm5ldCB0cmFmZmljIGFuZCBhdHRlbmRhbmNlLgo8YnI+PGJyPjwvQk9EWT48
L0hUTUw+Cg==

----ALT--rfPF85eQE7hmQJH759FnCCYxJIkhytqR1563838882--


--===============7790025711875808540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7790025711875808540==--

