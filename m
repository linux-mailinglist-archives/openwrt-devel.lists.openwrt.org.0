Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27280E7C1D
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 23:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r6j3rcd2jvdynFldSUr9x53P8KhPZ6E9/Q4jREe7FZ4=; b=scX
	uMZ5bZeLDc34DVv+cA0aOZLC7AQP6zsVYzY8sljcHdxTZOn8lOSFwLN/6l5y4WLQr0nRI5ZXBFOiP
	eE3zKx6mbl/3tHyBYoB0pDTpCdRrrwsGUNZnYyASbsZxXBlm0uR3NTYnJuEkUAYMRrJQONsQOWVwY
	vC5LGWqQxTQsGYGc9EC8NtEw3ovvqIIk4qqTxayLqylLmeGE8JlPK+kCdKk6hdVZ5HsyEUZ7QHtNJ
	hpTXPpIVWSNgyR0SNAAb4TeabO6Jd9VLQOe3pBqnhKNYN61s87YgbH9C+ThFWSMa4785yXJy1rU0u
	w5HitE62YDBwEBph+3fR/PBR9ObuJ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPD52-0006DC-P4; Mon, 28 Oct 2019 22:01:40 +0000
Received: from mail-yw1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPD4s-0006Cs-UO
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 22:01:32 +0000
Received: by mail-yw1-xc2f.google.com with SMTP id d192so4394034ywa.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 28 Oct 2019 15:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gCT3cRI2CrvtlnluMDnAlDu1HYUAFiiQbM2sIYiKLa4=;
 b=EGc+wNAAGHpeankI7No+r6hJwRJMENY5MF4f92+szXL6Dp3epVUe+N79rz1S1iGQHa
 YwLdbDUORWLfW/GJysMbqWC5nW9q4nuqRGdfyK4CARnFdG9UE2SenqtviOv08CDJBn8E
 JLl/m1p5nKu/2G/qctKCNpEK7bF2atCrGILKGF+/zWsodX61KA/WbDSVD8J0lJrOPPBd
 JCNhKWp5+9h3XZN/yXoFEoNq515tNxagN8u/qLKWMakRmAyC3NxY/cedoI8trrvITydT
 aIlh1mue8DizxmeJ6aTQOeW21OfSDMo4vTASz++qx3YRiZNZlgYBDnIxCfvg+u3De1+N
 CKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gCT3cRI2CrvtlnluMDnAlDu1HYUAFiiQbM2sIYiKLa4=;
 b=r4XYj6AxwuxklEMJ73OzdHy2mGCMrT5iruqCAB97g/uERVgg7/9uNVYB7bAO7XhhkZ
 hjjAK/WQcQNfuKV2lXFM9+ANLrd7WuECC1HMxpgsmjVx3Z3ci7q38OlgMTtry8iFDIeA
 r2+YgIo/atNm392XEak6GWSDkLMVIv8KKtC+yOBrZ1+fUCjh/W5dHY6VphQbIUVUGe6i
 WaF+vJEjgGEZbSYN7saE+IZWU9b8Sqae2Gs+DFCFs2jYCMZNtJFdzQmbv3bm7FGeeCkp
 DGNP3V3LQQZKZ9j4Ovh0nIDGvhU48DjlMN85C/CWeDjq29BriuN1S5Gm+6kW7CfaKCUw
 e9lQ==
X-Gm-Message-State: APjAAAX0whfe09ISATRqknBNEVjE7FO+sh9dE7yG0U6T0xb97qpFFH2C
 Nmxtb3JpCZz/q+5cYQ8fln63YbhGpcfiQOhzWsPnxdP2
X-Google-Smtp-Source: APXvYqxC3k9pmLKzW24m/7T7hzYeZo2bnXyGg3F14W8PpgjcbxR3H070pHrWRSqhOpzrcIwftHCRXiDpLir8VXxexOI=
X-Received: by 2002:a81:3d13:: with SMTP id k19mr15533689ywa.54.1572300089175; 
 Mon, 28 Oct 2019 15:01:29 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 28 Oct 2019 23:01:18 +0100
Message-ID: <CACna6rwe55gmb19H+EToF_jDOEDVqDOJkzhqGW-6G61=Gn2ReQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_150130_979336_94B3916B 
X-CRM114-Status: UNSURE (   4.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c2f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Network broken with kernels 5.2+
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

VXNpbmcgT3BlbldydCB3aXRoIGtlcm5lbHMgNS4yKyByZXN1bHRzIGluIGJyb2tlbiBuZXR3b3Jr
LiBJbnRlcmZhY2VzCnNlZW0gT0sgYnV0IEkgY2Fubm90IHBpbmcgbXkgcm91dGVyIGFueW1vcmUu
CgpUaGlzIHJlZ3Jlc3Npb24gaXMgY2F1c2VkIGJ5IHRoZSB1cHN0cmVhbSBjb21taXQKCmNvbW1p
dCBiNDI0ZTQzMmU3NzBkNmRkNTcyNzY1NDU5ZDViNmE5NmExOWM1Mjg2IChyZWZzL2Jpc2VjdC9i
YWQpCkF1dGhvcjogTWljaGFsIEt1YmVjZWsgPG1rdWJlY2VrQHN1c2UuY3o+CkRhdGU6ICAgVGh1
IE1heSAyIDE2OjE1OjEwIDIwMTkgKzAyMDAKCiAgICBuZXRsaW5rOiBhZGQgdmFsaWRhdGlvbiBv
ZiBOTEFfRl9ORVNURUQgZmxhZwoKUmV2ZXJ0aW5nIHRoYXQgY29tbWl0IGZyb20gdGhlIHRvcCBv
ZiA1LjIgb3IgNS4zIGZpeGVzIG5ldHdvcmsgZm9yIG1lLgoKQW55IGlkZWFzIHdoYXQncyB3cm9u
ZyB3aXRoIE9wZW5XcnQgJiBhYm92ZSBjaGFuZ2U/CgotLSAKUmFmYcWCCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
