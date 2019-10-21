Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A914DED12
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 15:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fB8mNwi0tmXV/CqZkm6q+fefr6ufmwFdPM5zYO6I6B4=; b=bUSiec78SKG2fEmMZTj3zFNt9C
	rDx+FyUuEMiEI72dk+ed+M6ghnDV7s1tSytfHSCZT4HpoEwYLISTfbaQr4Q9EL0H8homYdaRQ2X/8
	httKcgBteVUSJoMQDmh9YpDV0IveybrnEJeK8kRh30rqe4bHdIKqMGq9QjvA7y72i3mTqZ7avL5l0
	nut4T6snUmOuroq++gjhQpPxNScgU2eLBHZxSDGx8iNanDN4S85EKg4rnlMvJMm8LMrC3GtVB1cb0
	WJXa/whJ6GcW+7PhKYgklTClCeNFrQt7tinTblK/0B0TA4+5kBVMz972nQKH1xm29yKK3GrwBRfLp
	qqIgpsQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXNe-00085y-Fb; Mon, 21 Oct 2019 13:05:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXNY-00085V-Dj
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 13:05:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 03F223FFF;
 Mon, 21 Oct 2019 15:05:42 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 2de284bc;
 Mon, 21 Oct 2019 15:05:33 +0200 (CEST)
Date: Mon, 21 Oct 2019 15:05:32 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?QW5kcsOp?= Valentin <avalentin@marcant.net>
Message-ID: <20191021130532.GF52694@meh.true.cz>
References: <20191021123214.2252-1-avalentin@marcant.net>
 <20191021123214.2252-2-avalentin@marcant.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021123214.2252-2-avalentin@marcant.net>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_060544_612140_4605074A 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 1/5] tools/mkrasimage: Add support for
 128k header size
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW5kcsOpIFZhbGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+IFsyMDE5LTEwLTIxIDE0OjMy
OjEwXToKCkhpLAoKPiAgI2RlZmluZSBIRUFERVJfUEFSVElUSU9OX0NBTENfTEVOR1RIIDIwNDgK
PiAtI2RlZmluZSBIRUFERVJfUEFSVElUSU9OX0xFTkdUSCAweDEwMDAwCj4gIAo+ICBzdHJ1Y3Qg
ZmlsZV9pbmZvIHsKPiAgICAgIGNoYXIgKm5hbWU7ICAgIC8qIG5hbWUgb2YgdGhlIGZpbGUgKi8K
PiBAQCAtNzAsNiArNjksNyBAQCBzdGF0aWMgY2hhciAqcHJvZ25hbWU7Cj4gIHN0YXRpYyBjaGFy
ICpib2FyZF9uYW1lID0gMDsKPiAgc3RhdGljIGNoYXIgKnZlcnNpb25fbmFtZSA9IDA7Cj4gIHN0
YXRpYyB1bnNpZ25lZCBpbnQgcm9vdGZzX3NpemUgPSAwOwo+ICtzdGF0aWMgdW5zaWduZWQgaW50
IGhlYWRlcl9sZW5ndGggPSAweDEwMDAwOwoKeW91J3ZlIHBlcmhhcHMgZm9yZ2V0IHRvIHVzZSB0
aGF0IGRlZmluZSBIRUFERVJfUEFSVElUSU9OX0xFTkdUSCBhYm92ZSA/CgotLSB5bmV6egoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
