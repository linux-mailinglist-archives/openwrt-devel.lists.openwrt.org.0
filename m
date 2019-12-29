Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C5612C2B0
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 15:36:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6ZuV00Vw8yxdIewHc9q4SwgLUzP8YovciT0B/G3JcXk=; b=PC0
	9L1heXPzMtQKEmZaIVIirmJuPq8bcIf/wLe6pq4DI4HDwZ1CkovWU9974OW778ARtThoX8EbQz0Ci
	1y/hksww81B+JJHUHlO4qNKAt8iHmSkzML/4z+2CKobZQJnAN2+I6bH2nYx5ht1eCOXPRo17xSll6
	ow5swYziG+E0BCDJFQVGK84Xbj9XgIk88tQGej3EEdQTI4zQOctRjP5ibG8oJLHhl0+VK0hQMdzVH
	2ct3l3m71ToTS+eQ1cB1aOmIZ3UtxkhPmd5s7mBHgPpSQ+y828Wh1vLAymLVrHMGh0PqZrZT8xw5A
	peSDUYBp5vxVcnpEeEoO7pcWFxKD6EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilZfq-0006ei-J1; Sun, 29 Dec 2019 14:36:06 +0000
Received: from mail-yw1-xc33.google.com ([2607:f8b0:4864:20::c33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilZfi-0006eR-GX
 for openwrt-devel@lists.openwrt.org; Sun, 29 Dec 2019 14:35:59 +0000
Received: by mail-yw1-xc33.google.com with SMTP id v126so13167968ywc.10
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 06:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=yPvQQxg6+Q/o35eTrOeiwsjr2fveAjeI6CBAGvFp1pg=;
 b=WJfbgVubHClgjKh0MXxfYG60/AQAWwKkojGpyaJSUwyB+9I/mUSM23qEeaKCMpvn21
 iFl8OPujv2QeUQ4NSACWL++TrOiZRiPOGsU36X+gC80gKzXyDbjwY/wQ+H8VY0WFJuNO
 O1YU4uqk/6KbvSBthJEmRSvafgmUY7ju0vRNBwjQqAIPjQCqIuGHaP5K5+vKhS/fQ+0D
 cPq7RJJIkxHLpP0bxqu0K8RzlHbHMDds5WDEdx7ZVm9vOtGfeVhaixqha03oxopAxmrU
 JgZXl40+KCgP+e6HxG1b8AD2LiPA6fSn/LGu9os8AANoV3yHKfihhItySUDkApps4qjf
 14aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=yPvQQxg6+Q/o35eTrOeiwsjr2fveAjeI6CBAGvFp1pg=;
 b=EwHXf2qTHjQQKenrCQduRqPdvFCAsAr6FPCZ/G+CndDF8p6HtPH7No3/edV+TogBCy
 G8BnVspN86S/605F9DVqhlOtdlgU5NzgW7HhsLM3qlgv5QMG3YUhI+Hhk/bp4KLmMIrd
 iVVDw3p+9DrbPNm2AhUttKQ/n6JAwRPasOf30yza6SKpomVgD/ng+PbpCUkn75Di098G
 XBQvj9HY0OLW05R0TLkcYP6/dgkhKiTq3KqtUcUDRIZBFsTSVSzymPc0j4V2CaC1acvc
 Zw5fbUNdYTouI7vi9zSNNbcGhHWXFRBll2HBTHpfr1vidn+rkzRrcPSig2gxqslGp7+w
 xfBQ==
X-Gm-Message-State: APjAAAXibNlMtnOKrlXd4kuiD1Dn5Cq29JScN4mCyABUoAHoNPO8RhK0
 FTtlElwjqAp/kTzHOOw1QLNMrxsObxwNZXAP8N3zBtIC
X-Google-Smtp-Source: APXvYqwuGVbPHw2PvF7JLw12KFSk6L7Sc2byrnbkhag8jsuVX1SH2wFevVBc+aaGuYNvdnO7pm3nzl4ZgSKPCP0kgVI=
X-Received: by 2002:a0d:d4cb:: with SMTP id
 w194mr45035019ywd.263.1577630156215; 
 Sun, 29 Dec 2019 06:35:56 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 29 Dec 2019 15:35:45 +0100
Message-ID: <CACna6rz=BYYPVzFPdPU6qtr5+i56qA1POYUrbTCKsS1r0a8jrw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_063558_576379_90018FBA 
X-CRM114-Status: UNSURE (   5.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c33 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Problem with blockd starting after partitions
 mounting
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QSB5ZWFyIGFnbyBJIGludHJvZHVjZWQgaG90cGx1Zy5kIHNjcmlwdCBtZWFudCB0byBtYW5hZ2Ug
U2FtYmEgc2hhcmVzCmluIGEgY2xldmVyIHdheSBieToKMSkgVXNpbmcgIm1vdW50IiBob3RwbHVn
LmQgZXZlbnQKMikgR2V0dGluZyBtb3VudCBpbmZvIGZyb20gYmxvY2tkCgpSZWxldmFudCBjb21t
aXQgZWYxZWZhNzU2ZTBkICgic2FtYmEzNjogYWRkIHBhY2thZ2Ugd2l0aCBob3RwbHVnLmQKc2Ny
aXB0IGZvciBhdXRvIHNoYXJpbmciKToKaHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3Blbndy
dC9vcGVud3J0LmdpdDthPWNvbW1pdGRpZmY7aD1lZjFlZmE3NTZlMGQwY2FlZjQxMjE2NzE5ZGNj
NzJjNzFiMzFkOGZmCgpUb2RheSBJIHJlYWxpemVkIGl0IGRvZXNuJ3Qgd29yayBmb3IgcGFydGl0
aW9ucyBtb3VudGVkIGF0IGJvb3QgdGltZQphcyBibG9ja2QgaXNuJ3QgcnVubmluZyB0aGVuIGFu
ZCAidWJ1cyBjYWxsIGJsb2NrIGluZm8iIHNpbXBseSBmYWlscy4KCiJtb3VudCIgaG90cGx1Zy5k
IGV2ZW50cyBhdCBib290IHRpbWUgYXJlIGdlbmVyYXRlZCBieToKMSkgL2V0Yy9ob3RwbHVnLmQv
YmxvY2svMTAtbW91bnQgY2FsbGluZyAvc2Jpbi9ibG9jayBob3RwbHVnCjIpIC9zYmluL2Jsb2Nr
IGhvdHBsdWcgY2FsbGluZyAvc2Jpbi9ob3RwbHVnLWNhbGwgbW91bnQKClNvIGl0J3Mgbm90IGEg
bWF0dGVyIG9mIGluaXQuZCBvcmRlciBhbmQgYWRqdXN0aW5nIFNUQVJUIGluCi9ldGMvaW5pdC5k
L2Jsb2NrZCAoYmxvY2sgZGV2aWNlcyBhcHBlYXIgRUFSTFkpLgoKQW55IGlkZWEgaG93IHRvIHNv
bHZlIHRoaXMgcHJvYmxlbT8gU2hvdWxkIHdlIG1heWJlIHBvc3Rwb25lICJtb3VudCIKZXZlbnRz
PyBFLmcuIHVudGlsICJibG9ja2QiIHN0YXJ0PyBPciBzaG91bGQgaG90cGx1Zy5kIHNjcmlwdCBz
b21laG93CndhaXQgdW50aWwgImJsb2NrZCIgc3RhcnRzPwoKLS0gClJhZmHFggoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
