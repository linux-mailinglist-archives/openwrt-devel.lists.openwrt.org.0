Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D97131D5
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 18:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A9EKMj2jgXY3XAv222cc2o5WW2lpG294zmauguak6co=; b=HUCF4XD1AZZJLz
	zL6eB3aJUiOgJRlsCElgS1/bjPlrCN0AJn3hGrkp/01wE068dVCX6eQj8eejfpMcD4n6mCecQBK4m
	Z2XL15KL1it6yV57sjOCZV/H8MkAOdtnWKxrAxsTydfajvEYv8wNtZ3sgX+Dm57PrKqfWAFk18ilG
	lbCh0nSoD06n7aBfkSLaZfHfaDzieZV0ZKupfEw0SfjxQJfNe2Y4jhh68ubzcH1g+ydNeDK25hsxY
	VXZsArccyjqsm5mv1ZiyoLoQcYImh8014iGCWKJNQBqv5zHDM5j8klCQZVa8VvJthLO3X4gAID4jQ
	vFZQH09yP7IuGeKYZbfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMagy-00036p-GN; Fri, 03 May 2019 16:05:44 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMagr-000363-OU
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 16:05:39 +0000
Received: by mail-lj1-x243.google.com with SMTP id b12so5673421lji.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 May 2019 09:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rBYGrjwk3HGOKNilbgcBmPVqAfiL75tvO0k42iiWyeM=;
 b=gqYNXZk5+304JMCdFqmQfqv9neYAKskawNkJVAvvq1IUZ4JOqfHgc6oc37cobwxOzF
 8dFFSgEVAWb9LaY1MAVSjWWA5npiBVbKDt/Sw1QETM9K+NMfnaozSKIAyI4qlVbbhXfN
 WS1wfpQFP654wIfyZP8cdJPqpQzapMekfOEK3eUmZRmujkSp+Fmk5fgOnGACpKF1G6ku
 jQYwdd7wnXeaP5ob5cPJD5jHq32U7+U6c0SWhCKD8W9yqsmIrd6ivrt187j9g2Ox6s8v
 WJaOArVXrxb68GLMjx7T/mTcl1wA51LmD0lA2YeY0mxTOYfYMGmP8aKs4rbQiHJ7j8Au
 bsVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rBYGrjwk3HGOKNilbgcBmPVqAfiL75tvO0k42iiWyeM=;
 b=Ciy7mq9vl2t34do0CTLJayrM8gvnh4XBt9QODciAsWUNoMlqy6ZVj6XCvHY+GrlH48
 dE8Ilw/sJSajYNPNUoFUgEln+bIvGSMkrZB+IGhRuehlzt1F8XZoCs24GBrv/MhoGtog
 oWNpIYy7ncKzngwEaPcyJPPZc62rNL2OSLbaUIAewDF6OMB2fBhtu4PzWopLnJv+hjsv
 oRWKszApFKwTsLgunlRSPSyUuNCzWQdTZXjhqz4WMImTl0Ri/C+WrwjYZ1cE5nejV3on
 zr4N6yQJNNeoS2sQ4rvykv9Dlk1iM6hZQXts1Tg5f8k/yuclMTbEELtp3e8zPHTrkZMc
 28PQ==
X-Gm-Message-State: APjAAAWoOEoTzc+c0Mr0jTjbrdK2suAub5mEUVSP8IOCq0N45vVbXweh
 RlawK8l0DEYeywy5IWhLKiSKDmdd
X-Google-Smtp-Source: APXvYqzp7xoTgiGZPChptzt2Pqfys44uOo3a17bzbCHtoztSGsiDVsp2LkVlPC/Z1lq1K8GxTb/KgA==
X-Received: by 2002:a2e:824b:: with SMTP id j11mr5324678ljh.197.1556899535257; 
 Fri, 03 May 2019 09:05:35 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id q15sm495728lfh.59.2019.05.03.09.05.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:05:34 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 18:05:32 +0200
Message-Id: <20190503160532.2214-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_090537_822589_73CEBD10 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] system: uci: Use config dir on uci_add and
 support add_/del_list
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
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBjb21taXQgbWFrZXMgdGhyZWUgY2hhbmdlcyB0byB0aGUgdWNpIHNoZWxsIGxpYnJhcnk6
CgoqIEEgY2hlY2sgZm9yIFVDSV9DT05GSUdfRElSIGhhcyBiZWVuIGFkZGVkIHRvIHRoZSBjb21t
YW5kIGxpbmUgd2hlbgphZGRpbmcgYW5vbnltb3VzIHNlY3Rpb25zLiBXaXRob3V0wqB0aGlzIGNo
YW5nZSwgYWRkaW5nIGFub255bW91cwpzZWN0aW9ucyB0byBjb25maWdzIG5vdCBzdG9yZWQgaW4g
L2V0Yy9jb25maWcgaXMgbm90IHBvc3NpYmxlLgoKKiBTdXBwb3J0IGZvciBhZGRpbmcvcmVtb3Zp
bmcgaXRlbXMgZnJvbSBsaXN0cyB3ZXJlIG1pc3NpbmcsIHNvIEkgaGF2ZQphZGRlZCB0aGUgZnVu
Y3Rpb25zIHVjaV9hZGRfbGlzdCgpIGFuZCB1Y2lfZGVsX2xpc3QoKSB0byBzaW1wbGlmeQp3b3Jr
aW5nIHdpdGggdWNpIGxpc3RzIGZyb20gc2NyaXB0cy4KClNpZ25lZC1vZmYtYnk7IEtyaXN0aWFu
IEV2ZW5zZW4gPGtyaXN0aWFuLmV2ZW5zZW5AZ21haWwuY29tPgotLS0KIHBhY2thZ2Uvc3lzdGVt
L3VjaS9maWxlcy9saWIvY29uZmlnL3VjaS5zaCB8IDIwICsrKysrKysrKysrKysrKysrKystCiAx
IGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL3BhY2thZ2Uvc3lzdGVtL3VjaS9maWxlcy9saWIvY29uZmlnL3VjaS5zaCBiL3BhY2thZ2Uv
c3lzdGVtL3VjaS9maWxlcy9saWIvY29uZmlnL3VjaS5zaAppbmRleCA3OGVjMjc3NjY5Li44MDNh
ZGY5ZDk3IDEwMDY0NAotLS0gYS9wYWNrYWdlL3N5c3RlbS91Y2kvZmlsZXMvbGliL2NvbmZpZy91
Y2kuc2gKKysrIGIvcGFja2FnZS9zeXN0ZW0vdWNpL2ZpbGVzL2xpYi9jb25maWcvdWNpLnNoCkBA
IC04NSw2ICs4NSwxNSBAQCB1Y2lfc2V0KCkgewogCS9zYmluL3VjaSAke1VDSV9DT05GSUdfRElS
OistYyAkVUNJX0NPTkZJR19ESVJ9IHNldCAiJFBBQ0tBR0UuJENPTkZJRy4kT1BUSU9OPSRWQUxV
RSIKIH0KIAordWNpX2FkZF9saXN0KCkgeworCWxvY2FsIFBBQ0tBR0U9IiQxIgorCWxvY2FsIENP
TkZJRz0iJDIiCisJbG9jYWwgT1BUSU9OPSIkMyIKKwlsb2NhbCBWQUxVRT0iJDQiCisKKwkvc2Jp
bi91Y2kgJHtVQ0lfQ09ORklHX0RJUjorLWMgJFVDSV9DT05GSUdfRElSfSBhZGRfbGlzdCAiJFBB
Q0tBR0UuJENPTkZJRy4kT1BUSU9OPSRWQUxVRSIKK30KKwogdWNpX2dldF9zdGF0ZSgpIHsKIAl1
Y2lfZ2V0ICIkMSIgIiQyIiAiJDMiICIkNCIgIi92YXIvc3RhdGUiCiB9CkBAIC0xMDgsNyArMTE3
LDcgQEAgdWNpX2FkZCgpIHsKIAlsb2NhbCBDT05GSUc9IiQzIgogCiAJaWYgWyAteiAiJENPTkZJ
RyIgXTsgdGhlbgotCQlleHBvcnQgJHtOT19FWFBPUlQ6Ky1ufSBDT05GSUdfU0VDVElPTj0iJCgv
c2Jpbi91Y2kgYWRkICIkUEFDS0FHRSIgIiRUWVBFIikiCisJCWV4cG9ydCAke05PX0VYUE9SVDor
LW59IENPTkZJR19TRUNUSU9OPSIkKC9zYmluL3VjaSAke1VDSV9DT05GSUdfRElSOistYyAkVUNJ
X0NPTkZJR19ESVJ9IGFkZCAiJFBBQ0tBR0UiICIkVFlQRSIpIgogCWVsc2UKIAkJL3NiaW4vdWNp
ICR7VUNJX0NPTkZJR19ESVI6Ky1jICRVQ0lfQ09ORklHX0RJUn0gc2V0ICIkUEFDS0FHRS4kQ09O
RklHPSRUWVBFIgogCQlleHBvcnQgJHtOT19FWFBPUlQ6Ky1ufSBDT05GSUdfU0VDVElPTj0iJENP
TkZJRyIKQEAgLTEzMiw2ICsxNDEsMTUgQEAgdWNpX3JlbW92ZSgpIHsKIAkvc2Jpbi91Y2kgJHtV
Q0lfQ09ORklHX0RJUjorLWMgJFVDSV9DT05GSUdfRElSfSBkZWwgIiRQQUNLQUdFLiRDT05GSUck
e09QVElPTjorLiRPUFRJT059IgogfQogCit1Y2lfZGVsX2xpc3QoKSB7CisJbG9jYWwgUEFDS0FH
RT0iJDEiCisJbG9jYWwgQ09ORklHPSIkMiIKKwlsb2NhbCBPUFRJT049IiQzIgorCWxvY2FsIFZB
TFVFPSIkNCIKKworCS9zYmluL3VjaSAke1VDSV9DT05GSUdfRElSOistYyAkVUNJX0NPTkZJR19E
SVJ9IGRlbF9saXN0ICIkUEFDS0FHRS4kQ09ORklHLiRPUFRJT049JFZBTFVFIgorfQorCiB1Y2lf
Y29tbWl0KCkgewogCWxvY2FsIFBBQ0tBR0U9IiQxIgogCS9zYmluL3VjaSAke1VDSV9DT05GSUdf
RElSOistYyAkVUNJX0NPTkZJR19ESVJ9IGNvbW1pdCAkUEFDS0FHRQotLSAKMi4xOS4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
