Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EA120857
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 15:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XBuxftJLKBBJTkQVoEws41bpI34+J7nj0btexmcY4TI=; b=AdrSAJV2+WcNs5
	WPuowW+AEvqg6oGCEBy09RbLaAsGOU9U1jeHIlo8aEeZ7AgHkS+rQ4ET3DYWBTFR+pYlQB9ERyxOz
	2qZOXhw8ms2+fx41kDKkAhjH3HliRn/eDQ2x7ARAnnNMA6oxQT4tnrdF7Iq7fvh140sCOuZjRZY+Q
	YgvcmDoGUrttUvQgB35Hk4UGB0qAIupjjVsTXbuK7ipusMHl4oa2piOuZELA1VV2vsQxhbZiOUhcW
	oHKsq6ESsVB7dJjrH4pxKRIsk12gc7UKCO5q0FMU3FVEIBo/molTFvUr9xSEe4xNv3baYKNBvcM1m
	oHhSfvNohTKs+oZrMwVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGaL-0006hH-Fa; Thu, 16 May 2019 13:38:13 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGaE-0006gt-La
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 13:38:08 +0000
Received: by mail-wm1-x341.google.com with SMTP id n25so3147556wmk.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 May 2019 06:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PTV5MdAQe2EDnIkiwZNOMNrDrEdt+1SfHiNYfelbRCA=;
 b=DnhPGBBrzrxILGqBSbBvyff//Z8djSVZOr/xZ7EXfQQzRJWIi9pTVhr1INlHlQ1O46
 C/4d8jGPqMTkNWqb2wxMZycBxyWe/KxkI7Z6hILOPRop9m4Dd8GiG0Soyh9BAYCyBaU7
 5aBs4DqQ5/COfnSWtZDuocCOBAC/gWM9YIAlksVBOEcqBi+igTEXrElDIsZHv72G44oe
 Un9ZXZisKqq94CKj5CwO/ijmL7lvD7o3AKruoRnkQRwy7vhVpzBAd4/kkF7NVElu1PbH
 f6x4jsuh3Zrc7XGt/LH0kIotP+4W6N0BH+qYlpSt++GAScruHe377Md6wlV2WJeZjzYR
 TBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PTV5MdAQe2EDnIkiwZNOMNrDrEdt+1SfHiNYfelbRCA=;
 b=mNZHG0l5WOAI7/NI5fJbk34nDjZOxdykWi5hNBoAq1DDeNSnRsrxj5oYv7d9LkftZ4
 TYYNCX5K3q1tsuXdDJVf1Sahtc/Keu1UkdyWZ/0hJo7F8+3VVSs/FUC9NTEJuNVhXGU8
 qVwsi+PlCaxTFECCPdqSbu35ICE8LD3R8Psjogn0fHNyDsAYzJjqGH72XGfPoGh8GP3U
 VH6wZUDsMcwK/r/LkAASB1iqw3YRnIQ8KE/re7iRWgNrFgTp2zz44Un5tCS87LRgD2cX
 RoKUmj5OpdUH67VURpxq2Y9RGKRsbxcdqUXFLv3jPAXTVtfw/TqyMJdFyXHx5GVUozGc
 UwJg==
X-Gm-Message-State: APjAAAXtXdHW0rTOX6Ikf5DmzeIWJzK9Z/r8jPS+yYUE3m0feui69jrk
 eH7gOeWA6wgV/uNkefiD47NLDQKj
X-Google-Smtp-Source: APXvYqzjM5SKSzcyr25MrY9eg+XHU4xkuLx17+28rDunSaOOyEN+UnYB6mSx67kz6iflMOHNMkpRtw==
X-Received: by 2002:a1c:a80b:: with SMTP id r11mr9048662wme.77.1558013883571; 
 Thu, 16 May 2019 06:38:03 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id z5sm5560813wmi.34.2019.05.16.06.38.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 06:38:02 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 May 2019 15:38:00 +0200
Message-Id: <20190516133800.12466-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_063806_708010_ADF21C39 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v3] ramips: Add support for ZBT WE826-E
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

WkJUIFdFODI2LUUgaXMgYSBkdWFsLVNJTSB2ZXJzaW9uIG9mIHRoZSBaQlQgV0U4MjYuIFRoZSBy
b3V0ZXIgaGFzIHRoZQpmb2xsb3dpbmcgc3BlY2lmaWNhdGlvbnM6CgotIE1UNzYyMEEgKDU4MCBN
SHopCi0gMTI4TUIgUkFNCi0gMzJNQiBvZiBmbGFzaCAoU1BJIE5PUikKLSA1eCAxMC8xMDBNYnBz
IEV0aGVybmV0IChNVDc2MjBBIGJ1aWx0LWluIHN3aXRjaCkKLSAxeCBtaWNyb1NEIHNsb3QKLSAx
eCBtaW5pUENJZSBzbG90IChvbmx5IFVTQjIuMCBidXMpCi0gMnggU0lNIGNhcmQgc2xvdHMgKHN0
YW5kYXJkIHNpemUpCi0gMXggVVNCMi4wIHBvcnQKLSAxeCAyLjRHSHogd2lmaSAocnQyODAwKQot
IDEweCBMRURzICg0IEdQSU8tY29udHJvbGxlZCkKLSAxeCByZXNldCBidXR0b24KClRoZSBmb2xs
b3dpbmcgaGF2ZSBiZWVuIHRlc3RlZCBhbmQgd29ya2luZzoKLSBFdGhlcm5ldCBzd2l0Y2gKLSB3
aWZpCi0gbWluaVBDSWUgc2xvdAotIFVTQiBwb3J0Ci0gbWljcm9TRCBzbG90Ci0gc3lzdXBncmFk
ZQotIHJlc2V0IGJ1dHRvbgoKSW5zdGFsbGF0aW9uIGFuZCByZWNvdmVyeToKCkluIG9yZGVyIHRv
IGluc3RhbGwgT3BlbldSVCB0aGUgZmlyc3QgdGltZSBvciByZWNvdmVyIHRoZSByb3V0ZXIsIHlv
dQpjYW4gdXNlIHRoZSB3ZWItYmFzZWQgcmVjb3Zlcnkgc3lzdGVtLiBLZWVwIHRoZSByZXNldCBi
dXR0b24gcHJlc3NlZApkdXJpbmcgYm9vdCBhbmQgYWNjZXNzIDE5Mi4xNjguMS4xIGluIHlvdXIg
YnJvd3NlciB3aGVuIHlvdXIgbWFjaGluZQpvYnRhaW5zIGFuIElQIGFkZHJlc3MuICBVcGxvYWQg
dGhlIGZpcm13YXJlIHRvIHN0YXJ0IHRoZSByZWNvdmVyeQpwcm9jZXNzLgoKSG93IHRvIHN3YXAg
U0lNczoKCllvdSBjb250cm9sIHdoaWNoIFNJTSBzbG90IHRvIHVzZSBieSB3cml0aW5nIDAvMSB0
bwovc3lzL2NsYXNzL2dwaW8vZ3BpbzEzL3ZhbHVlLiBJbiBvcmRlciBmb3IgdGhlIGNoYW5nZSB0
byB0YWtlIGVmZmVjdCwKeW91IGNhbiBlaXRoZXIgdXNlIEFULWNvbW1hbmRzIChBVCtDRlVOKSBv
ciBwb3dlci1jeWNsZSB0aGUgbW9kZW0gKHdyaXRlCjAvMSB0byAvc3lzL2NsYXNzL2dwaW8vZ3Bp
bzE0L3ZhbHVlKS4KClNpZ25lZC1vZmYtYnk6IEtyaXN0aWFuIEV2ZW5zZW4gPGtyaXN0aWFuLmV2
ZW5zZW5AZ21haWwuY29tPgotLS0KdjItPnYzOgoqIFJlbW92ZSB0aGUgb2xkIGRlc2NyaXB0aW9u
IG9mIHRoZSBmaXJzdCB0aW1lIGluc3RhbGxhdGlvbiBhbmQgcG9pbnQKdGhlIHVzZXIgdG8gdGhl
IHdlYiBiYXNlZCByZWNvdmVyeSBzeXN0ZW0gaW5zdGVhZCAodGhhbmtzIFBldHIgxaB0ZXRpYXIp
LgoqIEFkZCBsaWNlbnNlIHRvIERUUyAodGhhbmtzIFBldHIgxaB0ZXRpYXIpLgoKdjEtPnYyOgoq
IFVzZSBnZW5lcmljIGJvYXJkL21vZGVsIGRldGVjdGlvbiwgdXBkYXRlZCB0aGUgbWF0Y2ggaW4g
MDFfbGVkcyBhbmQKMDJfbmV0d29yayAodGhhbmtzIFBldHIgxaB0ZXRpYXIpLgoqIENoYW5nZWQg
dGhlIGRldmljZS90YXJnZXQgZGV2aWNlIGluIHRoZSBNYWtlZmlsZSB0byBtYXRjaCB0aGUKY29t
cGF0aWJsZS1zdHJpbmcgaW4gdGhlIERUUyAodGhhbmtzIFBldHIgxaB0ZXRpYXIpLgoqIFVzZSB0
aGUgdXNlci1zcGFjZSBncGlvLXN3aXRjaCBhbHRlcm5hdGl2ZSBpbnN0ZWFkIG9mIGdwaW8tZXhw
b3J0IGluCnRoZSBEVFMgKHRoYW5rcyBQZXRyIMWgdGV0aWFyKS4KKiBVcGRhdGUgbmFtZSBvZiBm
bGFzaCBub2RlIGluIERUUyB0byB0aGUgbW9yZSBnZW5lcmljICJmbGFzaDAiICh0aGFua3MKUGV0
ciDFoHRldGlhcikuCiogRml4IGltYWdlIHNpemUgaW4gdGhlIE1ha2VmaWxlICh0aGFua3MgUGV0
ciDFoHRldGlhcikuCiogR3JvdXAgdGhlIHdpZmktTEVEIHRvZ2V0aGVyIHdpdGggb3RoZXIgZGV2
aWNlcyAodGhhbmtzIFBldHIgxaB0ZXRpYXIpLgoqIFVwZGF0ZWQgY29tbWl0IG1lc3NhZ2UuCiog
V2hpbGUgdGhlIGRldmljZSBjYW4gYmUgb3JkZXJlZCB3aXRob3V0IGEgbW9kZW0sIEkgaW1hZ2lu
ZSBtb3N0CmRldmljZXMgd2lsbCBiZSBkZWxpdmVyZWQgd2l0aCBhIG1vZGVtLiBJIGhhdmUgdGhl
cmVmb3JlIGVuYWJsZWQgc3VwcG9ydApmb3IgUU1JIGFuZCBPcHRpb24sIHNvIHRoYXQgbW9zdCBt
b2RlbXMgY2FuIGJlIHVzZWQgb3V0IG9mIHRoZSBib3guCi0tLQogLi4uL3JhbWlwcy9iYXNlLWZp
bGVzL2V0Yy9ib2FyZC5kLzAxX2xlZHMgICAgIHwgIDMgKy0KIC4uLi9yYW1pcHMvYmFzZS1maWxl
cy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrICB8ICAxICsKIC4uLi9iYXNlLWZpbGVzL2V0Yy9ib2Fy
ZC5kLzAzX2dwaW9fc3dpdGNoZXMgICB8ICA0ICsKIHRhcmdldC9saW51eC9yYW1pcHMvZHRzL1pC
VC1XRTgyNi1FLmR0cyAgICAgICB8IDg0ICsrKysrKysrKysrKysrKysrKysKIHRhcmdldC9saW51
eC9yYW1pcHMvaW1hZ2UvbXQ3NjIwLm1rICAgICAgICAgICB8ICA5ICsrCiA1IGZpbGVzIGNoYW5n
ZWQsIDEwMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQg
dGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvWkJULVdFODI2LUUuZHRzCgpkaWZmIC0tZ2l0IGEvdGFy
Z2V0L2xpbnV4L3JhbWlwcy9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAxX2xlZHMgYi90YXJnZXQv
bGludXgvcmFtaXBzL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDFfbGVkcwppbmRleCBmYTIwYWIw
NzE0Li45NDFiNGIxMDliIDEwMDc1NQotLS0gYS90YXJnZXQvbGludXgvcmFtaXBzL2Jhc2UtZmls
ZXMvZXRjL2JvYXJkLmQvMDFfbGVkcworKysgYi90YXJnZXQvbGludXgvcmFtaXBzL2Jhc2UtZmls
ZXMvZXRjL2JvYXJkLmQvMDFfbGVkcwpAQCAtMjUxLDcgKzI1MSw4IEBAIG1yMjAwKQogbXRjLHdy
MTIwMSkKIAl1Y2lkZWZfc2V0X2xlZF9zd2l0Y2ggImV0aF9saW5rIiAiTEFOIGxpbmsiICIkYm9h
cmRuYW1lOmdyZWVuOmV0aF9saW5rIiAic3dpdGNoMCIgIjB4MGYiCiAJOzsKLW16ay1leDc1MG5w
KQorbXprLWV4NzUwbnB8XAoremJ0bGluayx6YnQtd2U4MjYtZSkKIAlzZXRfd2lmaV9sZWQgIiRi
b2FyZG5hbWU6cmVkOndpZmkiCiAJOzsKIG5ldGdlYXIscjYxMjApCmRpZmYgLS1naXQgYS90YXJn
ZXQvbGludXgvcmFtaXBzL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yayBiL3Rhcmdl
dC9saW51eC9yYW1pcHMvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCmluZGV4IGMy
NjQ2ODc2YTIuLjYzYmZhYjI0ODYgMTAwNzU1Ci0tLSBhL3RhcmdldC9saW51eC9yYW1pcHMvYmFz
ZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMv
YmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCkBAIC0xMzMsNiArMTMzLDcgQEAgcmFt
aXBzX3NldHVwX2ludGVyZmFjZXMoKQogCXlvdWt1LHlrLWwyfFwKIAl6YnQtYXBlNTIyaWl8XAog
CXpidC13ZTEzMjZ8XAorCXpidGxpbmssemJ0LXdlODI2LWV8XAogCXpidGxpbmssemJ0LXdlMzUy
NnxcCiAJemJ0LXdlODI2LTE2TXxcCiAJemJ0LXdlODI2LTMyTXxcCmRpZmYgLS1naXQgYS90YXJn
ZXQvbGludXgvcmFtaXBzL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDNfZ3Bpb19zd2l0Y2hlcyBi
L3RhcmdldC9saW51eC9yYW1pcHMvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wM19ncGlvX3N3aXRj
aGVzCmluZGV4IDgwZTNjNGM0MWYuLjYxMTlkN2M0ODUgMTAwNzU1Ci0tLSBhL3RhcmdldC9saW51
eC9yYW1pcHMvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wM19ncGlvX3N3aXRjaGVzCisrKyBiL3Rh
cmdldC9saW51eC9yYW1pcHMvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wM19ncGlvX3N3aXRjaGVz
CkBAIC0yNCw2ICsyNCwxMCBAQCB1Ym50LWVyeC1zZnApCiAJdWNpZGVmX2FkZF9ncGlvX3N3aXRj
aCAicG9lX3Bvd2VyX3BvcnQzIiAiUG9FIFBvd2VyIFBvcnQzIiAiNDk5IgogCXVjaWRlZl9hZGRf
Z3Bpb19zd2l0Y2ggInBvZV9wb3dlcl9wb3J0NCIgIlBvRSBQb3dlciBQb3J0NCIgIjUwMCIKIAk7
OworemJ0bGluayx6YnQtd2U4MjYtZSkKKwl1Y2lkZWZfYWRkX2dwaW9fc3dpdGNoICJzaW1fc3dp
dGNoIiAiU0lNIHNsb3Qgc3dpdGNoIiAiMTMiCisJdWNpZGVmX2FkZF9ncGlvX3N3aXRjaCAicG93
ZXJfbXBjaWUiICJtUENJZSBwb3dlciIgIjE0IiAiMSIKKwk7OwogZXNhYwogCiBib2FyZF9jb25m
aWdfZmx1c2gKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL1pCVC1XRTgyNi1F
LmR0cyBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL1pCVC1XRTgyNi1FLmR0cwpuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwLi5jZTk3YjAzNzE1Ci0tLSAvZGV2L251bGwKKysr
IGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvWkJULVdFODI2LUUuZHRzCkBAIC0wLDAgKzEsODQg
QEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyIE9SIE1JVAor
L2R0cy12MS87CisKKyNpbmNsdWRlICJaQlQtV0U4MjYuZHRzaSIKKworLyB7CisJY29tcGF0aWJs
ZSA9ICJ6YnRsaW5rLHpidC13ZTgyNi1lIiwgInpidGxpbmssemJ0LXdlODI2IiwgInJhbGluayxt
dDc2MjBhLXNvYyI7CisJbW9kZWwgPSAiWkJULVdFODI2LUUiOworCisJL2RlbGV0ZS1ub2RlLyBs
ZWRzOworCisJbGVkcyB7CisJCWNvbXBhdGlibGUgPSAiZ3Bpby1sZWRzIjsKKworCQlsZWRfcG93
ZXI6IGdzbSB7CisJCQlsYWJlbCA9ICJ6YnQtd2U4MjYtZTpibHVlOmdzbSI7CisJCQlncGlvcyA9
IDwmZ3BpbzAgOSBHUElPX0FDVElWRV9MT1c+OworCQl9OworCisJCXNpZ25hbCB7CisJCQlsYWJl
bCA9ICJ6YnQtd2U4MjYtZTpncmVlbjpzaWduYWwiOworCQkJZ3Bpb3MgPSA8JmdwaW8wIDExIEdQ
SU9fQUNUSVZFX0xPVz47CisJCX07CisKKwkJc2ltIHsKKwkJCWxhYmVsID0gInpidC13ZTgyNi1l
OnJlZDpzaW0iOworCQkJZ3Bpb3MgPSA8JmdwaW8wIDEyIEdQSU9fQUNUSVZFX0xPVz47CisJCX07
CisKKwkJYWlyIHsKKwkJCWxhYmVsID0gInpidC13ZTgyNi1lOnJlZDp3aWZpIjsKKwkJCWdwaW9z
ID0gPCZncGlvMyAwIEdQSU9fQUNUSVZFX0xPVz47CisJCX07CisJfTsKK307CisKKyZzcGkwIHsK
KwlzdGF0dXMgPSAib2theSI7CisKKwlmbGFzaEAwIHsKKwkJY29tcGF0aWJsZSA9ICJqZWRlYyxz
cGktbm9yIjsKKwkJcmVnID0gPDA+OworCQlzcGktbWF4LWZyZXF1ZW5jeSA9IDwxMDAwMDAwMD47
CisKKwkJcGFydGl0aW9ucyB7CisJCQljb21wYXRpYmxlID0gImZpeGVkLXBhcnRpdGlvbnMiOwor
CQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkjc2l6ZS1jZWxscyA9IDwxPjsKKworCQkJcGFy
dGl0aW9uQDAgeworCQkJCWxhYmVsID0gInUtYm9vdCI7CisJCQkJcmVnID0gPDB4MCAweDMwMDAw
PjsKKwkJCQlyZWFkLW9ubHk7CisJCQl9OworCisJCQlwYXJ0aXRpb25AMzAwMDAgeworCQkJCWxh
YmVsID0gInUtYm9vdC1lbnYiOworCQkJCXJlZyA9IDwweDMwMDAwIDB4MTAwMDA+OworCQkJCXJl
YWQtb25seTsKKwkJCX07CisKKwkJCWZhY3Rvcnk6IHBhcnRpdGlvbkA0MDAwMCB7CisJCQkJbGFi
ZWwgPSAiZmFjdG9yeSI7CisJCQkJcmVnID0gPDB4NDAwMDAgMHgxMDAwMD47CisJCQkJcmVhZC1v
bmx5OworCQkJfTsKKworCQkJZmlybXdhcmU6IHBhcnRpdGlvbkA1MDAwMCB7CisJCQkJY29tcGF0
aWJsZSA9ICJkZW54LHVpbWFnZSI7CisJCQkJbGFiZWwgPSAiZmlybXdhcmUiOworCQkJCXJlZyA9
IDwweDUwMDAwIDB4MWZiMDAwMD47CisJCQl9OworCQl9OworCX07Cit9OworCismcGluY3RybCB7
CisJc3RhdGVfZGVmYXVsdDogcGluY3RybDAgeworCQlkZWZhdWx0IHsKKwkJCXJhbGluayxncm91
cCA9ICJpMmMiLCAidWFydGYiLCAid2xlZCI7CisJCQlyYWxpbmssZnVuY3Rpb24gPSAiZ3BpbyI7
CisJCX07CisJfTsKK307CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2ltYWdlL210
NzYyMC5tayBiL3RhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3NjIwLm1rCmluZGV4IGRhOTA1
NjhkZjAuLjM1ZmVjYjlhYzYgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9yYW1pcHMvaW1hZ2Uv
bXQ3NjIwLm1rCisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3NjIwLm1rCkBAIC04
MDksNiArODA5LDE1IEBAIGRlZmluZSBEZXZpY2UvemJ0LXdlODI2LTMyTQogZW5kZWYKIFRBUkdF
VF9ERVZJQ0VTICs9IHpidC13ZTgyNi0zMk0KIAorZGVmaW5lIERldmljZS96YnRsaW5rX3pidC13
ZTgyNi1lCisgIERUUyA6PSBaQlQtV0U4MjYtRQorICBJTUFHRV9TSVpFIDo9IDMyNDQ4aworICBE
RVZJQ0VfVElUTEUgOj0gWmJ0bGluayBaQlQtV0U4MjYtRQorICBERVZJQ0VfUEFDS0FHRVMgOj0g
a21vZC11c2IyIGttb2QtdXNiLW9oY2kga21vZC1zZGhjaS1tdDc2MjAgdXFtaSBcCisJCSAgICAg
a21vZC11c2Itc2VyaWFsIGttb2QtdXNiLXNlcmlhbC1vcHRpb24KK2VuZGVmCitUQVJHRVRfREVW
SUNFUyArPSB6YnRsaW5rX3pidC13ZTgyNi1lCisKIGRlZmluZSBEZXZpY2UvemJ0LXdyODMwNXJ0
CiAgIERUUyA6PSBaQlQtV1I4MzA1UlQKICAgREVWSUNFX1RJVExFIDo9IFpidGxpbmsgWkJULVdS
ODMwNVJUCi0tIAoyLjE5LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
