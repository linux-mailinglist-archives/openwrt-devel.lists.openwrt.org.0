Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D0B11E199
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 11:06:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpEeQYxKB+yUuSgaJYPE3GX4d2GDNSWchsNjUcc3eMU=; b=HUYVf4muIJGR4j
	ipk1Sa6upgp0gnGChROjM8fMJ0jOPK4gZHhbtDAKFHtr0qdLDNRUlf1VVeV9VwHJHmXR9qnVhBUTv
	Hcd7LaKOIXVEeEGQSVyqwp3mj9bb/u6yd/zeMZYCk4jDyIzuiQtmi6czSdpPFiPo4u8KVL6pt7TLz
	4NtZtiTg+HWBXGMkMJGPCsO7ysZvFDagNTgIlI4WREzGd7ZP9xH/o59fSp0Bnxsdbowzz/ZqZRRYR
	JFC1xcxlSNpXDAL0RR1uL/h2cyj72ATakdn3nu4Mch2VHWUNhsjy1eyIIFEj9HcD5JUuwJ+3SdDPo
	RAYUhuvoqsrNJi07D+Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhpg-0007lc-Cn; Fri, 13 Dec 2019 10:06:00 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhp4-00068g-Ut
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 10:05:27 +0000
Received: by mail-lf1-x144.google.com with SMTP id v201so1497123lfa.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Dec 2019 02:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=10im6gtxze1VE2OHFIMasqeUbSA7IwGnxM7P9jQkyRs=;
 b=EIMKuZZmxAr55LVZelfDGizibOT2L9HHttC6MhzZ0H5OG8phzGsCZ0asbnnL/bjwwi
 isGxmVL/gKUYQyMOOw1vfA3WOn+WRzVUVMVn8+Ofg1ddmvOnzk/HBgXPUK/GdDSUkKjo
 taDjkWeDIDrdbwZjnLB9x8rKFGHNgUTUnAOVamh7dhNQZxJ7/v7k4TZ8kTNqLg4mxI6z
 s9IHRF4NbcFIH8N15Pkl5zVswu+nfk9ZHcCE9n/MuQoZkhl0OI0zaQUdO39Un/ue3no/
 /2emWdh2JDostBZiYnMPlHwtWq05QQk3SCIWPoWVPbl/yu9yXWGLpkVrcv23j3xPvGsp
 8C4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=10im6gtxze1VE2OHFIMasqeUbSA7IwGnxM7P9jQkyRs=;
 b=kE0JE/4oAo13QPuqi2ieLfDgNHCb8umkZdpx7JASTieXlzsKLOjtMcIUYdTvfauGqY
 SjALo0qfsYYoKUGmEKWhuHtzK5rM08wS1YXUW5z47ojNF3MdlQ/uGvfg0AF/1nxZA/7q
 1LogQEH3h6/P3isT7IdbSwdJ3J2dSIB2jOl7XRz2cF70dp9VQXniIC0YnInRTDIkr0vg
 xDWYK7d/btvjkfnHEJ3pzvUvjJz37wtDHkJRt7uZZuauY2F4RYDkydFH98OMcKgDJe+1
 qDnF0OQdwbS7wfv9jePgVnPTj8m/waSbw6jblQuwhu8qvKnTOwqEKZR6N5pYg3Q/DrYa
 OfZQ==
X-Gm-Message-State: APjAAAU2tPvfsTppOB7YjF7dwT7nQc4Lg2aalcB+auBSK89f7lB9QIC8
 n39c3ttGejI40GlMz4swp8LFGRv2
X-Google-Smtp-Source: APXvYqwEx++FgENWQsMfLA/hFrVAQLwzuMt/CvuIJgZgJdMI/zv/tSPGR0LJUIyhpxXCtjO4OVk08Q==
X-Received: by 2002:a19:40d3:: with SMTP id n202mr8622336lfa.108.1576231519816; 
 Fri, 13 Dec 2019 02:05:19 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id w71sm5021438lff.0.2019.12.13.02.05.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Dec 2019 02:05:19 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Dec 2019 11:05:11 +0100
Message-Id: <20191213100512.31373-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191213100512.31373-1-zajec5@gmail.com>
References: <20191213100512.31373-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_020523_298344_C1E6285C 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH fstools 1/2] blockd: fix vlist memory
 corruption
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKdmxpc3RfYWRkKCkgZXhw
ZWN0cyBrZXkgdG8gcG9pbnQgYSBwZXJzaXN0ZW50IG1lbW9yeSBhcyBpdCBkb2Vzbid0IG1ha2UK
aXRzIGNvcHkuIFBhc3NpbmcgYmxvYl9hdHRyIG9mIGN1cnJlbnQgbWVzc2FnZSB3YXMgcmVzdWx0
aW5nIGluCnVuZGVmaW5lZC9yYW5kb20gYmVoYXZpb3IgaW5jbHVkaW5nIGxpc3QgY29ycnVwdGlv
biBhbmQgcG9zc2libGUKY3Jhc2hlcy4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8
cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBibG9ja2QuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Jsb2NrZC5jIGIvYmxv
Y2tkLmMKaW5kZXggODhmZTE2OC4uNzM3NWIyYiAxMDA2NDQKLS0tIGEvYmxvY2tkLmMKKysrIGIv
YmxvY2tkLmMKQEAgLTI1NSw3ICsyNTUsNyBAQCBibG9ja19ob3RwbHVnKHN0cnVjdCB1YnVzX2Nv
bnRleHQgKmN0eCwgc3RydWN0IHVidXNfb2JqZWN0ICpvYmosCiAJCXN0cmNweShfbmFtZSwgZGV2
bmFtZSk7CiAJCWRldmljZS0+dGFyZ2V0ID0gX190YXJnZXQ7CiAJCXN0cmNweShfX3RhcmdldCwg
dGFyZ2V0KTsKLQkJdmxpc3RfYWRkKCZkZXZpY2VzLCAmZGV2aWNlLT5ub2RlLCBibG9ibXNnX2dl
dF9zdHJpbmcoZGF0YVtNT1VOVF9ERVZJQ0VdKSk7CisJCXZsaXN0X2FkZCgmZGV2aWNlcywgJmRl
dmljZS0+bm9kZSwgZGV2aWNlLT5uYW1lKTsKIAl9CiAJdmxpc3RfZmx1c2goJmRldmljZXMpOwog
Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
