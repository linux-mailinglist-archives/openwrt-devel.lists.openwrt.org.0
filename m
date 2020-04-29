Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44851BEC99
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Apr 2020 01:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KjyYqthzWVKOhYHCv2RNtj5AwkB3s0xZNCl/NAlWr/c=; b=rVE2jiI7d4h3DX
	zpbTVxEZ6aKT5vXD1xfF8iOgkHmh5vFw7OeMfaoLmhyUyN9Bs/VgCqpyBzaa2y7hFduNaJsAy+J7K
	+uMYrdRZC380nQlZoXN4drgaUJ/L2w3RdAKIofQk1mZODmy3EIZcjkcnJUAITYphvalLA/i1+qhhA
	/0dXxKZn65fqiUGXk3xK7puXqJdVBUe4uoNczSk/L8QZWOd2EKDAq//DXFTNXkodGTbHIqeaVqCfz
	7lyZf2aTWL32o55lGUyQkEnPM95o4iaQ3FuanHIwJacK7YUioVwFY+i7BVhnPXZVaxX76RuE1Y6pE
	pvTYZx5fVGgkks4FlO8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTw1P-0006vI-Gq; Wed, 29 Apr 2020 23:21:43 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTw1I-0006uX-Q0
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 23:21:38 +0000
Received: from [192.168.254.4] (unknown [50.34.219.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 9870513C283
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Apr 2020 16:21:28 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 9870513C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1588202488;
 bh=3EKgXDjYqPTNYOHsKLlSoyFKV4yT0UkIdYUnIy9AfZk=;
 h=To:From:Subject:Date:From;
 b=eSr8uaPCvoTMMgwrDEaTpIdTSqGroa6hdP8QVlbeBm2aFrClzUoX3n+OvM05wsP1p
 p57J9yZ39RJcTMbmiEWfEti+S0ACHszMZGS5sLspkrroZcJ5LUHPrfe8TI/KUD25nw
 RzkE2yhIZ18EN9cF/gL0T9X5KIIU4+1M4Keuvjvc=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <40df9416-9391-a1ec-8de6-c050c15bf326@candelatech.com>
Date: Wed, 29 Apr 2020 16:21:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_162136_891088_08153624 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Please pull latest ath10k-ct driver
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

SGVsbG8sCgpQZXRyIGFkZGVkIGEgZml4IGZvciBzcHVyaW91cyBzcGxhdCB0aGF0IGhhcyBib3Ro
ZXJlZCBwZW9wbGUgZm9yIGEgd2hpbGUuCkFuZCwgSSBhZGRlZCBhIHBhdGNoIHRoYXQgdGhyb3R0
bGVzIHRoZSB3YWtlLXF1ZXVlIGxvZ2ljLiAgVGhpcyBzaWduaWZpY2FudGx5CmhlbHBzIENQVSB1
c2FnZSBpbiBjZXJ0YWluIGhpZ2gtdGhyb3VnaHB1dCB0ZXN0IGNhc2VzLgoKSWYgc29tZW9uZSBj
b3VsZCB1cGRhdGUgT3BlbldydCB0byBwdWxsIHRoZSBsYXRlc3QsIEknZCBhcHByZWNpYXRlIGl0
LgoKY29tbWl0IDM2MzdiZTZmNmJhZjk5ZTg1YTdmMGIyN2Y4MGE5OWEyZjJhNWY3OGQKCkdpdCBj
b21taXQgSURzIGFuZCByZWNlbnQgY2hhbmdlIGxvZ3MgYXJlIGJlbG93LgoKVGhhbmtzLApCZW4K
CgpbZ3JlZWFyYkBiZW4tZHQ0IGF0aDEway1jdF0kIGdpdCBsb2cKY29tbWl0IDM2MzdiZTZmNmJh
Zjk5ZTg1YTdmMGIyN2Y4MGE5OWEyZjJhNWY3OGQgKEhFQUQgLT4gbWFzdGVyLCBvcmlnaW4vbWFz
dGVyKQpBdXRob3I6IEJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPgpEYXRlOiAg
IFdlZCBBcHIgMjkgMDg6MzA6MzkgMjAyMCAtMDcwMAoKICAgICBhdGgxMGstY3Q6ICBBZGQgUGV0
ciBTdGV0aWFyJ3Mgc3BsYXQtZml4aW5nIHBhdGNoLgoKICAgICBBbmQgZm9yIDUuNCwgYWRkIHR4
LXF1ZXVlLXdha2UgdGhyb3R0bGluZyBwYXRjaC4KCmNvbW1pdCBhZTYwMGQ2NGZlOTkzMGQ1Mzk3
ZTcxOTRmOWIzZWI2YmY2NDQ3NGY5Ck1lcmdlOiA1ZWY2ZmQ1IGMxYjZmYTYKQXV0aG9yOiBCZW4g
R3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT4KRGF0ZTogICBXZWQgQXByIDI5IDA3OjU0
OjIzIDIwMjAgLTA3MDAKCiAgICAgTWVyZ2UgcHVsbCByZXF1ZXN0ICMxMjkgZnJvbSB5bmV6ei91
cHN0cmVhbS93b3JrYXJvdW5kLWludmFsaWQtdHgtcmF0ZQoKICAgICBhdGgxMGstY3Q6IHdvcmth
cm91bmQgVFggcmF0ZSBjb2RlIGZpcm13YXJlIGJ1ZwoKY29tbWl0IGMxYjZmYTY0NzVhNDE0MWQy
N2ViNDgxZTUwODE5NmE4NjJjMmQ2NGQKQXV0aG9yOiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PgpEYXRlOiAgIFR1ZSBBcHIgMjggMTk6NTg6NTQgMjAyMCArMDIwMAoKICAgICBhdGgxMGst
Y3Q6IHdvcmthcm91bmQgVFggcmF0ZSBjb2RlIGZpcm13YXJlIGJ1ZwoKICAgICBJdCBzZWVtcywg
dGhhdCB3ZSBnZXQgYSBiYWQgdHgvcnggcmF0ZSBmcm9tIGZpcm13YXJlLCBpdCBpcyBub3QgYSBy
ZWFsCiAgICAgcHJvYmxlbSBzbyBqdXN0IGNoZWNrIGZvciBpbnZhbGlkIHJhdGUgKDB4ZmYpIGFu
ZCBmb3JjZSBpdCB0byBiZSB6ZXJvCiAgICAgaW5zdGVhZC4KCiAgICAgRml4ZXM6ICMxMTcKICAg
ICBSZWY6IGh0dHBzOi8vYnVncy5vcGVud3J0Lm9yZy9pbmRleC5waHA/ZG89ZGV0YWlscyZ0YXNr
X2lkPTMwNTUKICAgICBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PgoKLS0gCkJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPgpDYW5kZWxhIFRlY2hu
b2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cuY2FuZGVsYXRlY2guY29tCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
