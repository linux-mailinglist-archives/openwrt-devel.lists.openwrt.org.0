Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4504A1B1E0F
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 07:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CvRFYJoxRrpfFIO7bWJs/nhgI7vT+sqCgLJMVUXI7T0=; b=VqZDB5qVCilTEN
	pXb2m0rZSN/1pzMUUbqBC+6jhKImVl8fuWwJ0lSf7AKD8O4858m9AcHgLeZfV1IGLzpcn5XDBth3n
	uX39GRC+v7WEeceOZp4LQK1RMSz/cOrvTCikBC7b8bxjgXfDosE9tphXej/N2yh4OZHvE7HEx0g8A
	E18ThIlkL0FMYfWX0omarrFhXau28OsyYaIBJ2LtOhOWos+czla0C+cKx2Wvg5xU1/xM4cyR0GmIP
	MHC01diJlkSlbHWlhRVriZ6NapQfiN6QPOD6t3TeB4CE8vKbGHi3xKRrkxkz/J6ubkH0UqouV7i3R
	QmkJmqcwp6kndPC03ruQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQlFs-00024q-Sy; Tue, 21 Apr 2020 05:15:32 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQlFm-00023H-LL
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 05:15:28 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03L5FJnw017622
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr 2020 23:15:19 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Message-Id: <C8C1EE45-7F41-4C1D-A65A-CF3B7931298F@redfish-solutions.com>
Date: Mon, 20 Apr 2020 23:15:19 -0600
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_221526_776282_E2A94BBD 
X-CRM114-Status: UNSURE (   4.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Missing default CONFIG_ symbols for 5.4?
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

SeKAmW0gdHJ5aW5nIHRvIGJ1aWxkIHg4Ni82NCBvbiBtYXN0ZXIsIGFuZCBJ4oCZbSBnZXR0aW5n
IHRoZSBmb2xsb3dpbmcgcHJvbXB0czoKClZlcmlmeSBrZXJuZWwgc2lnbmF0dXJlIGR1cmluZyBr
ZXhlY19maWxlX2xvYWQoKSBzeXNjYWxsIChLRVhFQ19TSUcpIFtOL3kvP10gKE5FVykKCk5ldGZp
bHRlciBuZl90YWJsZXMgc3VwcG9ydCAoTkZfVEFCTEVTKSBbTS9uL3kvP10gbQogIE5ldGZpbHRl
ciBuZl90YWJsZXMgc2V0IGluZnJhc3RydWN0dXJlIChORl9UQUJMRVNfU0VUKSBbTS9uLz9dIG0K
ICBOZXRmaWx0ZXIgbmZfdGFibGVzIG1peGVkIElQdjQvSVB2NiB0YWJsZXMgc3VwcG9ydCAoTkZf
VEFCTEVTX0lORVQpIFtOL3kvP10gKE5FVykgCgpJUHY0IG5mX3RhYmxlcyBzdXBwb3J0IChORl9U
QUJMRVNfSVBWNCkgW04veS8/XSAoTkVXKSAKCklQdjYgbmZfdGFibGVzIHN1cHBvcnQgKE5GX1RB
QkxFU19JUFY2KSBbTi95Lz9dIChORVcpIAoKRGV0ZWN0IEh1bmcgVGFza3MgKERFVEVDVF9IVU5H
X1RBU0spIFtZL24vP10geQogIERlZmF1bHQgdGltZW91dCBmb3IgaHVuZyB0YXNrIGRldGVjdGlv
biAoaW4gc2Vjb25kcykgKERFRkFVTFRfSFVOR19UQVNLX1RJTUVPVVQpIFsxMjBdIChORVcpIAog
IFBhbmljIChSZWJvb3QpIE9uIEh1bmcgVGFza3MgKEJPT1RQQVJBTV9IVU5HX1RBU0tfUEFOSUMp
IFtOL3kvP10gKE5FVykgCgpDYW4gc29tZW9uZSBwbGVhc2UgdXBkYXRlIHRoZSB2YWx1ZXMgZm9y
IHRhcmdldC9saW51eC9nZW5lcmljL2NvbmZpZy01LjQ/CgpUaGFua3MsCgotUGhpbGlwCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
