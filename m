Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D3116F011
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 21:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RYe1aQXVMQKjRQ4V27ihcqiJCMdGYGCiwqZCAR56/Y=; b=ipdMgBqdKq+/22
	sG2xwXzhmW9uu4nmeDdpHqWlB81VSJ+wzcnvXQot06Z141udeqsNK7hVhRi/AEzHSic7L2b5OYBZ2
	nFUDdnKqdo2U4s1JHaKhMPbcllOUhn0yhdEQMxenp3dftU4aU7uG5p9SDKNhwnYkj6RDeWIFRxtz+
	AOzkgRMQUpMuZ1q94Z399gMiwD6S5pBhPTr+ELLWeqXdA0M0wjI/XyWkklB1RY0o5ZKupBR0tziqL
	0tCTE1tOkNaWYKR/RpSB+q7Rc886v2FL++5wRLGntlAVdzTT0gvLz3XOvAmNbkXVdMd3IWEHF5SU3
	7li5Rlowuf+sok+OIl9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6gok-00043K-Gh; Tue, 25 Feb 2020 20:28:34 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6god-00042f-Fo
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 20:28:28 +0000
Received: by mail-wr1-x434.google.com with SMTP id w12so264878wrt.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Feb 2020 12:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6SCqwdMtI+BXPXbFPF06lNdTweL6BVYR9pKwS/BhxvU=;
 b=RQCp8yPx0JudxChejK/0ku9RkpWOfNcX8LSd5TeVqCGiK7tN4zTIJzEu0UCC7zSfKk
 EszYQ9ADDTP20y5FvPhwcdE8RG7sRrWTo5A7fXx1J3MH7T2RN8VtRqr6wNVONZhof8vl
 aMReoa6CiTv3iocEe7gCr0JkisfnYLVC2NGnsi5+tcoGVM4EIGisLHSYRMmCxt4b7cEH
 VEtBzJJnlG4QWcCz4TESPiY//xf0ELZejrcvXnlN07zimtAoog0bykdCNWd19oQ4k3js
 3DY48jDDI8NYRcmigsaLEv2Z6FIUY86LeXTq7YGXd1QMAyqEF69MPRTE7pfgmyN8FkCe
 9kxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6SCqwdMtI+BXPXbFPF06lNdTweL6BVYR9pKwS/BhxvU=;
 b=t0+wmNclouTbWK7labGdDXTq/NVVVnor4YJ0L4YDAD3mubQyKMWW/cIdyZbkiLuvUK
 mIGerYCrePK4V66LrDQyLLIzMJoSYp5+1q74uvf16u90zMdIaMVOv5roYFjXVvnWSW4k
 VcCwOudWnmUkk5A4QeL1cbpaxyKl2DBrGW1nbMdsf9bDUVtOl/TQANGIBB3IIGRMSei3
 SMpXv5ywyzUQ5RM4iDfuw080C+R9vhIddtxJ9i2cl65lWF2p+NwYkRRHLCnr00OKb0o4
 ZaTAOTlrefFPo4AyqQ9JtP0GRtupqmdL7Hyah0EpYZlyGMHWeO0ZO56bDA/jAka0hxIL
 SK3A==
X-Gm-Message-State: APjAAAXunXn/JkpbhF+wWPo809OWZD2EEbD717Q+RxaDpZNy0DPTupAi
 FOchCuYoVkGKjSKNctbFPBXS97hS
X-Google-Smtp-Source: APXvYqy4P/yLbScSHsWYKj+4xX8KdOeZgdf4DIZubHb/t91vTuqE6WAAcYlhd81rZMHfkueXsW8cIQ==
X-Received: by 2002:adf:fa86:: with SMTP id h6mr866738wrr.418.1582662505432;
 Tue, 25 Feb 2020 12:28:25 -0800 (PST)
Received: from localhost
 (p200300F6671636AC892FB1B853D25137.dip0.t-ipconnect.de.
 [2003:f6:6716:36ac:892f:b1b8:53d2:5137])
 by smtp.gmail.com with ESMTPSA id f1sm25704062wro.85.2020.02.25.12.28.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Feb 2020 12:28:25 -0800 (PST)
To: Rosen Penev <rosenp@gmail.com>
References: <4073c970-9ce5-b742-1e87-35b5cbeca1dc@gmail.com>
 <ADB10B7B-F636-40FA-97CF-C64BDA539ED1@gmail.com>
From: e9hack <e9hack@gmail.com>
Message-ID: <e60f9999-5763-e992-f169-5ca369da01e6@gmail.com>
Date: Tue, 25 Feb 2020 21:28:23 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <ADB10B7B-F636-40FA-97CF-C64BDA539ED1@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_122827_548989_6AB59942 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e9hack[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Tor is broken
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
Cc: jan.pavlinec@nic.cz, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW0gMTUuMDIuMjAyMCB1bSAxMToxOCBzY2hyaWViIFJvc2VuIFBlbmV2Ogo+IEl04oCZcyB0aGUg
cGlkZmlsZSBwcm9mcyBwYXJhbWV0ZXIgdGhhdOKAmXMgYnJlYWtpbmcgdGhpbmdzLgoKWW91ciBm
aXggZG9lc24ndCBzb2x2ZSB0aGUgaXNzdWUuIAoKY29tbWl0CWFjYWJiMmNmNTA3MjZjY2FmYzNj
YjQ0YWFiNDMwNzQ0MGIyMDM1YTQKdG9yOiBmaXggaW5pdCBzY3JpcHRzCgpUb3IgaXNuJ3QgYWJs
ZSB0byBjcmVhdGUgdGhlIHBpZCBmaWxlIGFuZCB0ZXJtaW5hdGVzLiBUaGUgcmVsb2FkIGZ1bmN0
aW9uIGRvZXMgYWxzbyBub3Qgd29yay4gVGhpcyBkb2VzIGZpeCB0aGUgaXNzdWVzOgoKZGlmZiAt
LWdpdCBhL25ldC90b3IvZmlsZXMvdG9yLmluaXQgYi9uZXQvdG9yL2ZpbGVzL3Rvci5pbml0Cmlu
ZGV4IDE0MmUyNTEyZC4uZGM0ZWE5ZDYzIDEwMDY0NAotLS0gYS9uZXQvdG9yL2ZpbGVzL3Rvci5p
bml0CisrKyBiL25ldC90b3IvZmlsZXMvdG9yLmluaXQKQEAgLTMyLDEwICszMiwxMyBAQCBnZW5l
cmF0ZV9jb25mKCkgewogfQoKIHJlbG9hZF9zZXJ2aWNlKCkgewotICAgICAgIHByb2NkX3NlbmRf
c2lnbmFsIC91c3Ivc2Jpbi90b3IKKyAgICAgICBwcm9jZF9zZW5kX3NpZ25hbCB0b3IKIH0KCiBz
dGFydF9zZXJ2aWNlKCkgeworICAgICAgIHRvdWNoIC92YXIvcnVuL3Rvci5waWQKKyAgICAgICBj
aG93biB0b3I6dG9yIC92YXIvcnVuL3Rvci5waWQKKwogICAgICAgIG1rZGlyIC1tIDA3MDAgLXAg
L3Zhci9saWIvdG9yCiAgICAgICAgY2hvd24gLVIgdG9yOnRvciAvdmFyL2xpYi90b3IKClJlZ2Fy
ZHMsCkhhcnRtdXQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
