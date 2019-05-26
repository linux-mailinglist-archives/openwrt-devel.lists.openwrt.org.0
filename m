Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 708B62AB5A
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 19:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c9Z3XracRbxAJoJKzhT+YVoypK5POP4m4EjqFsOUl8M=; b=HUlyOVP47T8uXMJzeBrm/lGjaZ
	0wfjP1qbQT1D1S9XEftMGl4Qee+vcsvbiS4eHQf0nOa0YJK5fCpO3mTRaqO2DD888sKIMRPctjD4A
	10kkJXKr/20l89vClq/jdRDLgQWSHJ1hmDAxvVkuAVXzlipDMuwnMQShyeKtphfFP5LclL1WF0ExI
	SFfwgoN4I1Y69vB7GVPhQah7bkASPb/QQaDc7mEYj6GB6fGcvbzTVf25z28OL+stBRy1/XpywGyRn
	kj+v+oZHlzDaG46A3SG/2FkBMuIHhU3QzI1NFDhG95mKI3ZSXh6nrJZY24rdsOHNX5gGuIGNTani9
	SGsmI7/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUwxL-0002y6-A3; Sun, 26 May 2019 17:29:11 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUwxE-0002xg-7T
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 17:29:05 +0000
Received: by mail-lf1-x12f.google.com with SMTP id y10so10426538lfl.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 May 2019 10:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=F0qgT/MzDpNX4V4tW8XLcDu5a55cVS6GcL4LiR3sdMM=;
 b=UfNJzygg4mIfOLt9InV5ciPPFPsdu7RfetKfFPsjInGsYuj2mLnvE60qTRU/yNbwSB
 cL6dOD47/Inl265IP1KnC4HTa1Q0kpnKD4vxzWw7P6YFKjwUQk4btK/ZxepgCE3vwf3B
 aJ6CWod0SB5dzEamKGoEq9BK2risQVvDiTkNYHO1PxSU9fZrK1ircleFECiJ/t03EzxP
 Ck75pIUZrxtUOs4VC+gpn+/fBrkIrZwJvmTMXPn9CRM6W44Bs5IVX1YWCs+3gUIlI3cX
 yq5qwA0NFAhPAZ6oZs3IID55JzJ+JyojOFaJQfNyDw5cP2C17GqrM7ViEAfyY0oaXZKQ
 NFUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F0qgT/MzDpNX4V4tW8XLcDu5a55cVS6GcL4LiR3sdMM=;
 b=oxZBj5ZBe3Tx1MdfM+2jXgQjU5baGTJk7vcoHBj8L9RmEKkaVmfn/DFMVd72foqmOe
 MsnZuz7BbKqo4Kq2fI8cQaSGwjOzuBYZSFCAbvTzbu2ZaxegniEoGuEzdcBzJrzxwsc4
 V9RcGDxQEly/c40hQtF8zXiRBRotvqYKSp4mQ7lKe5NCT7QOOHIF8r+tuczc2CbUnEs1
 GfILJiIyatlWuUt26/jOAU6/PyR9WJREqBRsuuT1Vz1NRffarvFKwuBKeN0s3B+H0v71
 Y5NWDMMLIBGFZBuASo6rHODXSXH1EVddjkdB15d1jS21Xyk9rO1NkntYNzmvHeEa3sF8
 9Kfg==
X-Gm-Message-State: APjAAAXYbGGbCSkr1VPF9LdrV4O6TbVprSlrdbGUkX5b90+d4dK+/Vem
 08Hhql09vOpQwyw2Rcos+KA3RXIm
X-Google-Smtp-Source: APXvYqxgVlmXY1+WTldzxmp3juLpmltTU6NAYAhG6IAJRJIJUUi1LPRwm2N6Ex/C95hyOWwRc3r75w==
X-Received: by 2002:a19:d106:: with SMTP id i6mr6357318lfg.8.1558891739556;
 Sun, 26 May 2019 10:28:59 -0700 (PDT)
Received: from samsung (095160102144.warszawa.vectranet.pl. [95.160.102.144])
 by smtp.gmail.com with ESMTPSA id
 p14sm1796179lfk.24.2019.05.26.10.28.58
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 May 2019 10:28:58 -0700 (PDT)
Date: Sun, 26 May 2019 19:28:56 +0200
From: Cezary Jackiewicz <cezary.jackiewicz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20190526192856.1290416d@samsung>
In-Reply-To: <03add529-c9ba-6cfe-3ce4-9d209239d675@birger-koblitz.de>
References: <03add529-c9ba-6cfe-3ce4-9d209239d675@birger-koblitz.de>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_102904_295212_24AB9CE6 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cezary.jackiewicz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] Support for Edimax EW-7476RPC
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

SGksCnR5cG86Cgo+ICDCoMKgwqDCoMKgwqDCoCA7Owo+ICtlZGltYXgsZXctNzQ3NnJwYykgXAo+
ICtlZGltYXgsZXctNzQ3OGFjKQoKZWRpbWF4LGV3LTc0NzZycGN8IFwKZWRpbWF4LGV3LTc0Nzhh
YykKCj4rwqDCoMKgwqDCoMKgwqAgdWNpZGVmX3NldF9sZWRfbmV0ZGV2ICJsYW4iICJsYW4iICIk
Ym9hcmRuYW1lOmdyZWVuOmludGVybmV0IiAiZXRoMCIKPisgICAgICAgIDs7wqDCoMKgwqAKCkFs
c28gd29ya2luZzoKCnVjaWRlZl9zZXRfbGVkX3N3aXRjaCAibGFuIiAibGFuIiAiJGJvYXJkbmFt
ZTpncmVlbjpsYW4iICJzd2l0Y2gwIiAiMHgyMCIKCihpZiB5b3UgcmVuYW1lIGludGVybmV0IHRv
IGxhbikKCi0tIApQb3pkcmF3aWFtLAogQ2V6YXJ5IEphY2tpZXdpY3oKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
