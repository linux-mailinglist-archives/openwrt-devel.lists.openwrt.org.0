Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA78174D29
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 13:15:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i931BzzO5Iv14OhnJTslg0NskjyrSgHki65NtpJABes=; b=VgXIpi+NxeYzuV
	4Ni8HKxUUOWtQLf2tdXWUKpWmE+u1StQI6C2ilsSSvsPS3Ww5fzgYEqB2uV1RAq0iOFP1Hous8AWR
	ZL11L+1c1i0MtIThDaYKuLloSXAQT5QxZUsN149r3kLKM7coVJKSdT6RDyHt0awCOJSRRJGsY4doM
	tziykDYsYwMF1F7wbnW4dsUmlNLmssKeR/k18RjD6Bf3sPw6UEb+k6Ib5PsezepmVzbaLeQQUjgWw
	o6Qz74aYcDhDLouXW5rut2mzq8XAQLwYcdR72bdvhbqaiFCOxUAO+Kc2Fs2Lqd37AyXdj9NuwKVmC
	h8aZcAL7GSsd251HyOCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8NUs-00006P-I8; Sun, 01 Mar 2020 12:15:02 +0000
Received: from mout-p-102.mailbox.org ([80.241.56.152])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8NSw-0006m8-9z
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 12:13:13 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 48VhxM0LPDzKmZ0;
 Sun,  1 Mar 2020 13:12:55 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id V0_jbWFmEHJe; Sun,  1 Mar 2020 13:12:52 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  1 Mar 2020 13:12:38 +0100
Message-Id: <20200301121241.5545-10-hauke@hauke-m.de>
In-Reply-To: <20200301121241.5545-1-hauke@hauke-m.de>
References: <20200301121241.5545-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_041302_738608_19781A39 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.152 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 09/12] octeon: Remove kernel 4.14 support
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyB0YXJnZXQgd2FzIHN3aXRjaGVkIHRvIGtlcm5lbCA0LjE5IG1vcmUgdGhhbiA2IG1vbnRo
cyBhZ28gaW4gY29tbWl0CmYzNDJmZmQzMDBkYSAoInRyZWV3aWRlOiBrZXJuZWw6IGJ1bXAgc29t
ZSB0YXJnZXRzIHRvIDQuMTkiKSBhbmQgbm93CndpdGgga2VybmVsIDUuNCBzdXBwb3J0IGJlaW5n
IGFkZGVkIGl0IGdldHMgaGFyZGVyIHRvIHN1cHBvcnQga2VybmVsCjQuMTQgaW4gYWRkaXRpb24g
dG8ga2VybmVsIDQuMTkgYW5kIDUuNC4KClNpZ25lZC1vZmYtYnk6IEhhdWtlIE1laHJ0ZW5zIDxo
YXVrZUBoYXVrZS1tLmRlPgotLS0KIHRhcmdldC9saW51eC9vY3Rlb24vY29uZmlnLTQuMTQgICAg
ICAgICAgICAgICB8IDMwNCAtLS0tLS0tLS0tLS0tLS0tLS0KIC4uLi8xMDAtdWJudF9lZGdlcm91
dGVyMl9zdXBwb3J0LnBhdGNoICAgICAgICB8ICAzMSAtLQogLi4uLzExMC1lcjIwMC1ldGhlcm5l
dF9wcm9iZV9vcmRlci5wYXRjaCAgICAgIHwgIDM0IC0tCiAuLi4vcGF0Y2hlcy00LjE0LzE2MC1j
bWRsaW5lLWhhY2sucGF0Y2ggICAgICAgfCAgNDcgLS0tCiAuLi4vb2N0ZW9uL3BhdGNoZXMtNC4x
NC8xNzAtY2lzY28taGFjay5wYXRjaCAgfCAgMzEgLS0KIDUgZmlsZXMgY2hhbmdlZCwgNDQ3IGRl
bGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9vY3Rlb24vY29uZmln
LTQuMTQKIGRlbGV0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvb2N0ZW9uL3BhdGNoZXMtNC4x
NC8xMDAtdWJudF9lZGdlcm91dGVyMl9zdXBwb3J0LnBhdGNoCiBkZWxldGUgbW9kZSAxMDA2NDQg
dGFyZ2V0L2xpbnV4L29jdGVvbi9wYXRjaGVzLTQuMTQvMTEwLWVyMjAwLWV0aGVybmV0X3Byb2Jl
X29yZGVyLnBhdGNoCiBkZWxldGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L29jdGVvbi9wYXRj
aGVzLTQuMTQvMTYwLWNtZGxpbmUtaGFjay5wYXRjaAogZGVsZXRlIG1vZGUgMTAwNjQ0IHRhcmdl
dC9saW51eC9vY3Rlb24vcGF0Y2hlcy00LjE0LzE3MC1jaXNjby1oYWNrLnBhdGNoCgpkaWZmIC0t
Z2l0IGEvdGFyZ2V0L2xpbnV4L29jdGVvbi9jb25maWctNC4xNCBiL3RhcmdldC9saW51eC9vY3Rl
b24vY29uZmlnLTQuMTQKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IGUyYjkyNmY4ZmMz
ZC4uMDAwMDAwMDAwMDAwCi0tLSBhL3RhcmdldC9saW51eC9vY3Rlb24vY29uZmlnLTQuMTQKKysr
IC9kZXYvbnVsbApAQCAtMSwzMDQgKzAsMCBAQAotQ09ORklHXzY0QklUPXkKLUNPTkZJR19BUkNI
X0JJTkZNVF9FTEZfU1RBVEU9eQotQ09ORklHX0FSQ0hfQ0xPQ0tTT1VSQ0VfREFUQT15Ci1DT05G
SUdfQVJDSF9ESVNDQVJEX01FTUJMT0NLPXkKLUNPTkZJR19BUkNIX0RNQV9BRERSX1RfNjRCSVQ9
eQotQ09ORklHX0FSQ0hfSEFTX0VMRl9SQU5ET01JWkU9eQotIyBDT05GSUdfQVJDSF9IQVNfR0NP
Vl9QUk9GSUxFX0FMTCBpcyBub3Qgc2V0Ci0jIENPTkZJR19BUkNIX0hBU19TR19DSEFJTiBpcyBu
b3Qgc2V0Ci0jIENPTkZJR19BUkNIX0hBU19TVFJJQ1RfS0VSTkVMX1JXWCBpcyBub3Qgc2V0Ci0j
IENPTkZJR19BUkNIX0hBU19TVFJJQ1RfTU9EVUxFX1JXWCBpcyBub3Qgc2V0Ci1DT05GSUdfQVJD
SF9ISUJFUk5BVElPTl9QT1NTSUJMRT15Ci1DT05GSUdfQVJDSF9NSUdIVF9IQVZFX1BDX1BBUlBP
UlQ9eQotQ09ORklHX0FSQ0hfTUlHSFRfSEFWRV9QQ19TRVJJTz15Ci1DT05GSUdfQVJDSF9NTUFQ
X1JORF9CSVRTPTEyCi1DT05GSUdfQVJDSF9NTUFQX1JORF9CSVRTX01BWD0xOAotQ09ORklHX0FS
Q0hfTU1BUF9STkRfQklUU19NSU49MTIKLUNPTkZJR19BUkNIX01NQVBfUk5EX0NPTVBBVF9CSVRT
X01BWD0xNQotIyBDT05GSUdfQVJDSF9PUFRJT05BTF9LRVJORUxfUldYIGlzIG5vdCBzZXQKLSMg
Q09ORklHX0FSQ0hfT1BUSU9OQUxfS0VSTkVMX1JXWF9ERUZBVUxUIGlzIG5vdCBzZXQKLUNPTkZJ
R19BUkNIX1BIWVNfQUREUl9UXzY0QklUPXkKLUNPTkZJR19BUkNIX1NQQVJTRU1FTV9FTkFCTEU9
eQotQ09ORklHX0FSQ0hfU1VQUE9SVFNfVVBST0JFUz15Ci1DT05GSUdfQVJDSF9TVVNQRU5EX1BP
U1NJQkxFPXkKLUNPTkZJR19BUkNIX1VTRV9CVUlMVElOX0JTV0FQPXkKLUNPTkZJR19BUkNIX1VT
RV9DTVBYQ0hHX0xPQ0tSRUY9eQotQ09ORklHX0FSQ0hfVVNFX1FVRVVFRF9SV0xPQ0tTPXkKLUNP
TkZJR19BUkNIX1VTRV9RVUVVRURfU1BJTkxPQ0tTPXkKLUNPTkZJR19BUkNIX1dBTlRfSVBDX1BB
UlNFX1ZFUlNJT049eQotQ09ORklHX0JMS19ERVZfTE9PUD15Ci1DT05GSUdfQkxLX0RFVl9TRD15
Ci1DT05GSUdfQkxLX01RX1BDST15Ci1DT05GSUdfQkxLX1NDU0lfUkVRVUVTVD15Ci0jIENPTkZJ
R19CT09UUEFSQU1fSFVOR19UQVNLX1BBTklDIGlzIG5vdCBzZXQKLUNPTkZJR19CT09UUEFSQU1f
SFVOR19UQVNLX1BBTklDX1ZBTFVFPTAKLUNPTkZJR19CVUlMVElOX0RUQj15Ci1DT05GSUdfQ0FW
SVVNX0NONjNYWFAxPXkKLUNPTkZJR19DQVZJVU1fT0NURU9OX0NWTVNFR19TSVpFPTIKLUNPTkZJ
R19DQVZJVU1fT0NURU9OX0xPQ0tfTDI9eQotQ09ORklHX0NBVklVTV9PQ1RFT05fTE9DS19MMl9F
WENFUFRJT049eQotQ09ORklHX0NBVklVTV9PQ1RFT05fTE9DS19MMl9JTlRFUlJVUFQ9eQotQ09O
RklHX0NBVklVTV9PQ1RFT05fTE9DS19MMl9MT1dfTEVWRUxfSU5URVJSVVBUPXkKLUNPTkZJR19D
QVZJVU1fT0NURU9OX0xPQ0tfTDJfTUVNQ1BZPXkKLUNPTkZJR19DQVZJVU1fT0NURU9OX0xPQ0tf
TDJfVExCPXkKLUNPTkZJR19DQVZJVU1fT0NURU9OX1NPQz15Ci1DT05GSUdfQ0VWVF9SNEs9eQot
Q09ORklHX0NMT05FX0JBQ0tXQVJEUz15Ci1DT05GSUdfQ1BVX0JJR19FTkRJQU49eQotQ09ORklH
X0NQVV9DQVZJVU1fT0NURU9OPXkKLUNPTkZJR19DUFVfR0VORVJJQ19EVU1QX1RMQj15Ci1DT05G
SUdfQ1BVX0hBU19QUkVGRVRDSD15Ci1DT05GSUdfQ1BVX0hBU19SSVhJPXkKLUNPTkZJR19DUFVf
SEFTX1NZTkM9eQotIyBDT05GSUdfQ1BVX0xJVFRMRV9FTkRJQU4gaXMgbm90IHNldAotQ09ORklH
X0NQVV9NSVBTUjI9eQotQ09ORklHX0NQVV9ORUVEU19OT19TTUFSVE1JUFNfT1JfTUlDUk9NSVBT
PXkKLUNPTkZJR19DUFVfUjRLX0ZQVT15Ci1DT05GSUdfQ1BVX1JNQVA9eQotQ09ORklHX0NQVV9T
VVBQT1JUU182NEJJVF9LRVJORUw9eQotQ09ORklHX0NQVV9TVVBQT1JUU19ISUdITUVNPXkKLUNP
TkZJR19DUFVfU1VQUE9SVFNfSFVHRVBBR0VTPXkKLUNPTkZJR19DUkFNRlM9eQotQ09ORklHX0NS
QVNIX0NPUkU9eQotQ09ORklHX0NSQzE2PXkKLUNPTkZJR19DUllQVE9fQUVBRD15Ci1DT05GSUdf
Q1JZUFRPX0FFQUQyPXkKLUNPTkZJR19DUllQVE9fQ1JDMzI9eQotQ09ORklHX0NSWVBUT19DUkMz
MkM9eQotQ09ORklHX0NSWVBUT19IQVNIPXkKLUNPTkZJR19DUllQVE9fSEFTSDI9eQotQ09ORklH
X0NSWVBUT19NQU5BR0VSPXkKLUNPTkZJR19DUllQVE9fTUFOQUdFUjI9eQotIyBDT05GSUdfQ1JZ
UFRPX01ENV9PQ1RFT04gaXMgbm90IHNldAotQ09ORklHX0NSWVBUT19OVUxMMj15Ci1DT05GSUdf
Q1JZUFRPX1JORzI9eQotIyBDT05GSUdfQ1JZUFRPX1NIQTFfT0NURU9OIGlzIG5vdCBzZXQKLSMg
Q09ORklHX0NSWVBUT19TSEEyNTZfT0NURU9OIGlzIG5vdCBzZXQKLSMgQ09ORklHX0NSWVBUT19T
SEE1MTJfT0NURU9OIGlzIG5vdCBzZXQKLUNPTkZJR19DUllQVE9fV09SS1FVRVVFPXkKLUNPTkZJ
R19ERUJVR19JTkZPPXkKLUNPTkZJR19ERUJVR19TUElOTE9DSz15Ci1DT05GSUdfREVGQVVMVF9I
VU5HX1RBU0tfVElNRU9VVD0xMjAKLUNPTkZJR19ERVRFQ1RfSFVOR19UQVNLPXkKLUNPTkZJR19E
TUFfQ09IRVJFTlQ9eQotQ09ORklHX0ROT1RJRlk9eQotQ09ORklHX0RUQz15Ci1DT05GSUdfRUFS
TFlfUFJJTlRLPXkKLUNPTkZJR19FREFDX0FUT01JQ19TQ1JVQj15Ci1DT05GSUdfRURBQ19TVVBQ
T1JUPXkKLUNPTkZJR19FTkFCTEVfTVVTVF9DSEVDSz15Ci1DT05GSUdfRVhUNF9GUz15Ci0jIENP
TkZJR19GMkZTX0NIRUNLX0ZTIGlzIG5vdCBzZXQKLUNPTkZJR19GMkZTX0ZTPXkKLSMgQ09ORklH
X0YyRlNfRlNfU0VDVVJJVFkgaXMgbm90IHNldAotQ09ORklHX0YyRlNfRlNfWEFUVFI9eQotQ09O
RklHX0YyRlNfU1RBVF9GUz15Ci1DT05GSUdfRkFUX0ZTPXkKLUNPTkZJR19GSVhFRF9QSFk9eQot
Q09ORklHX0ZSQU1FX1dBUk49MjA0OAotQ09ORklHX0ZTX01CQ0FDSEU9eQotQ09ORklHX0dFTkVS
SUNfQ0xPQ0tFVkVOVFM9eQotQ09ORklHX0dFTkVSSUNfQ01PU19VUERBVEU9eQotQ09ORklHX0dF
TkVSSUNfQ1BVX0FVVE9QUk9CRT15Ci1DT05GSUdfR0VORVJJQ19JTz15Ci1DT05GSUdfR0VORVJJ
Q19JUlFfU0hPVz15Ci1DT05GSUdfR0VORVJJQ19QQ0lfSU9NQVA9eQotQ09ORklHX0dFTkVSSUNf
U01QX0lETEVfVEhSRUFEPXkKLUNPTkZJR19HRU5FUklDX1RJTUVfVlNZU0NBTEw9eQotQ09ORklH
X0dQSU9MSUI9eQotQ09ORklHX0dQSU9fT0NURU9OPXkKLUNPTkZJR19HUElPX1NZU0ZTPXkKLSMg
Q09ORklHX0dST19DRUxMUyBpcyBub3Qgc2V0Ci1DT05GSUdfSEFORExFX0RPTUFJTl9JUlE9eQot
Q09ORklHX0hBUkRXQVJFX1dBVENIUE9JTlRTPXkKLUNPTkZJR19IQVNfRE1BPXkKLUNPTkZJR19I
QVNfSU9NRU09eQotQ09ORklHX0hBU19JT1BPUlRfTUFQPXkKLUNPTkZJR19IQVZFXzY0QklUX0FM
SUdORURfQUNDRVNTPXkKLSMgQ09ORklHX0hBVkVfQVJDSF9CSVRSRVZFUlNFIGlzIG5vdCBzZXQK
LUNPTkZJR19IQVZFX0FSQ0hfQ09NUElMRVJfSD15Ci1DT05GSUdfSEFWRV9BUkNIX0pVTVBfTEFC
RUw9eQotQ09ORklHX0hBVkVfQVJDSF9LR0RCPXkKLUNPTkZJR19IQVZFX0FSQ0hfU0VDQ09NUF9G
SUxURVI9eQotQ09ORklHX0hBVkVfQVJDSF9UUkFDRUhPT0s9eQotQ09ORklHX0hBVkVfQVJDSF9U
UkFOU1BBUkVOVF9IVUdFUEFHRT15Ci0jIENPTkZJR19IQVZFX0JPT1RNRU1fSU5GT19OT0RFIGlz
IG5vdCBzZXQKLUNPTkZJR19IQVZFX0NDX1NUQUNLUFJPVEVDVE9SPXkKLUNPTkZJR19IQVZFX0NP
TlRFWFRfVFJBQ0tJTkc9eQotQ09ORklHX0hBVkVfQ09QWV9USFJFQURfVExTPXkKLUNPTkZJR19I
QVZFX0NfUkVDT1JETUNPVU5UPXkKLUNPTkZJR19IQVZFX0RFQlVHX0tNRU1MRUFLPXkKLUNPTkZJ
R19IQVZFX0RFQlVHX1NUQUNLT1ZFUkZMT1c9eQotQ09ORklHX0hBVkVfRE1BX0FQSV9ERUJVRz15
Ci1DT05GSUdfSEFWRV9ETUFfQ09OVElHVU9VUz15Ci1DT05GSUdfSEFWRV9EWU5BTUlDX0ZUUkFD
RT15Ci1DT05GSUdfSEFWRV9FQlBGX0pJVD15Ci1DT05GSUdfSEFWRV9GVFJBQ0VfTUNPVU5UX1JF
Q09SRD15Ci1DT05GSUdfSEFWRV9GVU5DVElPTl9HUkFQSF9UUkFDRVI9eQotQ09ORklHX0hBVkVf
RlVOQ1RJT05fVFJBQ0VSPXkKLUNPTkZJR19IQVZFX0dFTkVSSUNfRE1BX0NPSEVSRU5UPXkKLUNP
TkZJR19IQVZFX0lERT15Ci1DT05GSUdfSEFWRV9JUlFfRVhJVF9PTl9JUlFfU1RBQ0s9eQotQ09O
RklHX0hBVkVfSVJRX1RJTUVfQUNDT1VOVElORz15Ci1DT05GSUdfSEFWRV9LVk09eQotQ09ORklH
X0hBVkVfTEFURU5DWVRPUF9TVVBQT1JUPXkKLUNPTkZJR19IQVZFX01FTUJMT0NLPXkKLUNPTkZJ
R19IQVZFX01FTUJMT0NLX05PREVfTUFQPXkKLUNPTkZJR19IQVZFX01FTU9SWV9QUkVTRU5UPXkK
LUNPTkZJR19IQVZFX01PRF9BUkNIX1NQRUNJRklDPXkKLUNPTkZJR19IQVZFX05FVF9EU0E9eQot
Q09ORklHX0hBVkVfT1BST0ZJTEU9eQotQ09ORklHX0hBVkVfUEVSRl9FVkVOVFM9eQotQ09ORklH
X0hBVkVfUkVHU19BTkRfU1RBQ0tfQUNDRVNTX0FQST15Ci1DT05GSUdfSEFWRV9TWVNDQUxMX1RS
QUNFUE9JTlRTPXkKLUNPTkZJR19IQVZFX1ZJUlRfQ1BVX0FDQ09VTlRJTkdfR0VOPXkKLUNPTkZJ
R19IT0xFU19JTl9aT05FPXkKLSMgQ09ORklHX0hVR0VUTEJGUyBpcyBub3Qgc2V0Ci1DT05GSUdf
SFdfSEFTX1BDST15Ci1DT05GSUdfSFdfUkFORE9NPXkKLUNPTkZJR19IV19SQU5ET01fT0NURU9O
PXkKLUNPTkZJR19IWj0yNTAKLSMgQ09ORklHX0haXzEwMCBpcyBub3Qgc2V0Ci1DT05GSUdfSFpf
MjUwPXkKLUNPTkZJR19IWl9QRVJJT0RJQz15Ci1DT05GSUdfSU1BR0VfQ01ETElORV9IQUNLPXkK
LUNPTkZJR19JTklUUkFNRlNfU09VUkNFPSIiCi1DT05GSUdfSU9NTVVfSEVMUEVSPXkKLUNPTkZJ
R19JUlFDSElQPXkKLUNPTkZJR19JUlFfRE9NQUlOPXkKLUNPTkZJR19JUlFfRk9SQ0VEX1RIUkVB
RElORz15Ci1DT05GSUdfSVJRX1dPUks9eQotQ09ORklHX0pCRDI9eQotQ09ORklHX0tBTExTWU1T
PXkKLUNPTkZJR19LRVhFQz15Ci1DT05GSUdfS0VYRUNfQ09SRT15Ci1DT05GSUdfTElCRkRUPXkK
LUNPTkZJR19NRElPX0JVUz15Ci1DT05GSUdfTURJT19DQVZJVU09eQotQ09ORklHX01ESU9fREVW
SUNFPXkKLUNPTkZJR19NRElPX09DVEVPTj15Ci1DT05GSUdfTUlHUkFUSU9OPXkKLUNPTkZJR19N
SVBTPXkKLSMgQ09ORklHX01JUFMzMl9OMzIgaXMgbm90IHNldAotIyBDT05GSUdfTUlQUzMyX08z
MiBpcyBub3Qgc2V0Ci1DT05GSUdfTUlQU19BU0lEX0JJVFM9OAotQ09ORklHX01JUFNfQVNJRF9T
SElGVD0wCi0jIENPTkZJR19NSVBTX0NMT0NLX1ZTWVNDQUxMIGlzIG5vdCBzZXQKLSMgQ09ORklH
X01JUFNfQ01ETElORV9EVEJfRVhURU5EIGlzIG5vdCBzZXQKLUNPTkZJR19NSVBTX0NNRExJTkVf
RlJPTV9CT09UTE9BREVSPXkKLSMgQ09ORklHX01JUFNfQ01ETElORV9GUk9NX0RUQiBpcyBub3Qg
c2V0Ci1DT05GSUdfTUlQU19FQlBGX0pJVD15Ci0jIENPTkZJR19NSVBTX0VMRl9BUFBFTkRFRF9E
VEIgaXMgbm90IHNldAotIyBDT05GSUdfTUlQU19IVUdFX1RMQl9TVVBQT1JUIGlzIG5vdCBzZXQK
LUNPTkZJR19NSVBTX0wxX0NBQ0hFX1NISUZUPTcKLUNPTkZJR19NSVBTX0wxX0NBQ0hFX1NISUZU
Xzc9eQotIyBDT05GSUdfTUlQU19NQUNISU5FIGlzIG5vdCBzZXQKLSMgQ09ORklHX01JUFNfTk9f
QVBQRU5ERURfRFRCIGlzIG5vdCBzZXQKLUNPTkZJR19NSVBTX1BHRF9DMF9DT05URVhUPXkKLUNP
TkZJR19NSVBTX1JBV19BUFBFTkRFRF9EVEI9eQotQ09ORklHX01JUFNfU1BSQU09eQotIyBDT05G
SUdfTUlQU19WQV9CSVRTXzQ4IGlzIG5vdCBzZXQKLUNPTkZJR19NTUM9eQotQ09ORklHX01NQ19C
TE9DSz15Ci1DT05GSUdfTU1DX0NBVklVTV9PQ1RFT049eQotIyBDT05GSUdfTU1DX1RJRk1fU0Qg
aXMgbm90IHNldAotQ09ORklHX01PRFVMRVNfVVNFX0VMRl9SRUw9eQotQ09ORklHX01PRFVMRVNf
VVNFX0VMRl9SRUxBPXkKLSMgQ09ORklHX01URF9DRklfSU5URUxFWFQgaXMgbm90IHNldAotQ09O
RklHX01URF9DTURMSU5FX1BBUlRTPXkKLUNPTkZJR19NVERfUEhZU01BUD15Ci1DT05GSUdfTkVF
RF9TR19ETUFfTEVOR1RIPXkKLUNPTkZJR19ORVRfRkxPV19MSU1JVD15Ci1DT05GSUdfTkxTPXkK
LUNPTkZJR19OTFNfQ09ERVBBR0VfNDM3PXkKLUNPTkZJR19OTFNfSVNPODg1OV8xPXkKLUNPTkZJ
R19OT19HRU5FUklDX1BDSV9JT1BPUlRfTUFQPXkKLSMgQ09ORklHX05PX0lPUE9SVF9NQVAgaXMg
bm90IHNldAotQ09ORklHX05SX0NQVVM9MTYKLUNPTkZJR19OUl9DUFVTX0RFRkFVTFRfMTY9eQot
Q09ORklHX09DVEVPTl9FVEhFUk5FVD15Ci0jIENPTkZJR19PQ1RFT05fSUxNIGlzIG5vdCBzZXQK
LUNPTkZJR19PQ1RFT05fTUdNVF9FVEhFUk5FVD15Ci1DT05GSUdfT0NURU9OX1VTQj15Ci1DT05G
SUdfT0NURU9OX1dEVD15Ci1DT05GSUdfT0Y9eQotQ09ORklHX09GX0FERFJFU1M9eQotQ09ORklH
X09GX0FERFJFU1NfUENJPXkKLUNPTkZJR19PRl9FQVJMWV9GTEFUVFJFRT15Ci1DT05GSUdfT0Zf
RkxBVFRSRUU9eQotQ09ORklHX09GX0dQSU89eQotQ09ORklHX09GX0lSUT15Ci1DT05GSUdfT0Zf
TURJTz15Ci1DT05GSUdfT0ZfTkVUPXkKLUNPTkZJR19PRl9QQ0k9eQotQ09ORklHX09GX1BDSV9J
UlE9eQotQ09ORklHX1BBREFUQT15Ci0jIENPTkZJR19QQVJUSVRJT05fQURWQU5DRUQgaXMgbm90
IHNldAotQ09ORklHX1BDST15Ci1DT05GSUdfUENJX0JVU19BRERSX1RfNjRCSVQ9eQotQ09ORklH
X1BDSV9ET01BSU5TPXkKLUNPTkZJR19QQ0lfRFJJVkVSU19MRUdBQ1k9eQotQ09ORklHX1BFUkZf
VVNFX1ZNQUxMT0M9eQotQ09ORklHX1BHVEFCTEVfTEVWRUxTPTMKLUNPTkZJR19QSFlMSUI9eQot
Q09ORklHX1BIWVNfQUREUl9UXzY0QklUPXkKLUNPTkZJR19QT1NJWF9NUVVFVUU9eQotQ09ORklH
X1BPU0lYX01RVUVVRV9TWVNDVEw9eQotQ09ORklHX1FVRVVFRF9SV0xPQ0tTPXkKLUNPTkZJR19R
VUVVRURfU1BJTkxPQ0tTPXkKLUNPTkZJR19SQ1VfTkVFRF9TRUdDQkxJU1Q9eQotQ09ORklHX1JD
VV9TVEFMTF9DT01NT049eQotQ09ORklHX1JFTEFZPXkKLUNPTkZJR19SRlNfQUNDRUw9eQotQ09O
RklHX1JQUz15Ci1DT05GSUdfU0NIRURfREVCVUc9eQotIyBDT05GSUdfU0NIRURfSU5GTyBpcyBu
b3Qgc2V0Ci1DT05GSUdfU0NTST15Ci1DT05GSUdfU0VDQ09NUD15Ci1DT05GSUdfU0VDQ09NUF9G
SUxURVI9eQotQ09ORklHX1NFUklBTF84MjUwX0RXPXkKLSMgQ09ORklHX1NFUklBTF84MjUwX0ZT
TCBpcyBub3Qgc2V0Ci1DT05GSUdfU0dfUE9PTD15Ci1DT05GSUdfU01QPXkKLUNPTkZJR19TUEFS
U0VNRU09eQotQ09ORklHX1NQQVJTRU1FTV9TVEFUSUM9eQotQ09ORklHX1NSQ1U9eQotQ09ORklH
X1NXSU9UTEI9eQotQ09ORklHX1NXUEhZPXkKLUNPTkZJR19TWVNDVExfRVhDRVBUSU9OX1RSQUNF
PXkKLUNPTkZJR19TWVNGU19ERVBSRUNBVEVEPXkKLUNPTkZJR19TWVNGU19ERVBSRUNBVEVEX1Yy
PXkKLUNPTkZJR19TWVNfSEFTX0NQVV9DQVZJVU1fT0NURU9OPXkKLUNPTkZJR19TWVNfSEFTX0VB
UkxZX1BSSU5USz15Ci1DT05GSUdfU1lTX1NVUFBPUlRTXzY0QklUX0tFUk5FTD15Ci1DT05GSUdf
U1lTX1NVUFBPUlRTX0FSQklUX0haPXkKLUNPTkZJR19TWVNfU1VQUE9SVFNfQklHX0VORElBTj15
Ci1DT05GSUdfU1lTX1NVUFBPUlRTX0hPVFBMVUdfQ1BVPXkKLUNPTkZJR19TWVNfU1VQUE9SVFNf
SFVHRVRMQkZTPXkKLUNPTkZJR19TWVNfU1VQUE9SVFNfTElUVExFX0VORElBTj15Ci1DT05GSUdf
U1lTX1NVUFBPUlRTX1JFTE9DQVRBQkxFPXkKLUNPTkZJR19TWVNfU1VQUE9SVFNfU01QPXkKLUNP
TkZJR19USUNLX0NQVV9BQ0NPVU5USU5HPXkKLUNPTkZJR19UUkVFX1JDVT15Ci1DT05GSUdfVFJF
RV9TUkNVPXkKLUNPTkZJR19VTklOTElORV9TUElOX1VOTE9DSz15Ci1DT05GSUdfVVNCPXkKLUNP
TkZJR19VU0JfQ09NTU9OPXkKLUNPTkZJR19VU0JfRUhDSV9CSUdfRU5ESUFOX01NSU89eQotQ09O
RklHX1VTQl9FSENJX0hDRD15Ci1DT05GSUdfVVNCX0VIQ0lfSENEX1BMQVRGT1JNPXkKLUNPTkZJ
R19VU0JfT0NURU9OX0VIQ0k9eQotQ09ORklHX1VTQl9PQ1RFT05fT0hDST15Ci1DT05GSUdfVVNC
X09IQ0lfQklHX0VORElBTl9NTUlPPXkKLUNPTkZJR19VU0JfT0hDSV9IQ0Q9eQotQ09ORklHX1VT
Ql9PSENJX0hDRF9QTEFURk9STT15Ci1DT05GSUdfVVNCX1NUT1JBR0U9eQotQ09ORklHX1VTQl9T
VVBQT1JUPXkKLUNPTkZJR19VU0VfT0Y9eQotQ09ORklHX1ZGQVRfRlM9eQotQ09ORklHX1ZNX0VW
RU5UX0NPVU5URVJTPXkKLUNPTkZJR19XQVRDSERPR19DT1JFPXkKLUNPTkZJR19XRUFLX09SREVS
SU5HPXkKLUNPTkZJR19YUFM9eQotQ09ORklHX1pMSUJfSU5GTEFURT15Ci1DT05GSUdfWk9ORV9E
TUEzMj15CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvb2N0ZW9uL3BhdGNoZXMtNC4xNC8xMDAt
dWJudF9lZGdlcm91dGVyMl9zdXBwb3J0LnBhdGNoIGIvdGFyZ2V0L2xpbnV4L29jdGVvbi9wYXRj
aGVzLTQuMTQvMTAwLXVibnRfZWRnZXJvdXRlcjJfc3VwcG9ydC5wYXRjaApkZWxldGVkIGZpbGUg
bW9kZSAxMDA2NDQKaW5kZXggOTkxZWI1NmNlMmQ4Li4wMDAwMDAwMDAwMDAKLS0tIGEvdGFyZ2V0
L2xpbnV4L29jdGVvbi9wYXRjaGVzLTQuMTQvMTAwLXVibnRfZWRnZXJvdXRlcjJfc3VwcG9ydC5w
YXRjaAorKysgL2Rldi9udWxsCkBAIC0xLDMxICswLDAgQEAKLS0tLSBhL2FyY2gvbWlwcy9pbmNs
dWRlL2FzbS9vY3Rlb24vY3ZteC1ib290aW5mby5oCi0rKysgYi9hcmNoL21pcHMvaW5jbHVkZS9h
c20vb2N0ZW9uL2N2bXgtYm9vdGluZm8uaAotQEAgLTI5NSw2ICsyOTUsOCBAQCBlbnVtIGN2bXhf
Ym9hcmRfdHlwZXNfZW51bSB7Ci0gCSAqLwotIAlDVk1YX0JPQVJEX1RZUEVfQ1VTVF9QUklWQVRF
X01JTiA9IDIwMDAxLAotIAlDVk1YX0JPQVJEX1RZUEVfVUJOVF9FMTAwID0gMjAwMDIsCi0rCUNW
TVhfQk9BUkRfVFlQRV9VQk5UX0UyMDAgPSAyMDAwMywKLSsJQ1ZNWF9CT0FSRF9UWVBFX1VCTlRf
RTIyMCA9IDIwMDA1LAotIAlDVk1YX0JPQVJEX1RZUEVfQ1VTVF9EU1IxMDAwTiA9IDIwMDA2LAot
IAlDVk1YX0JPQVJEX1RZUEVfS09OVFJPTl9TMTkwMSA9IDIxOTAxLAotIAlDVk1YX0JPQVJEX1RZ
UEVfQ1VTVF9QUklWQVRFX01BWCA9IDMwMDAwLAotQEAgLTM5Niw2ICszOTgsOCBAQCBzdGF0aWMg
aW5saW5lIGNvbnN0IGNoYXIgKmN2bXhfYm9hcmRfdHlwCi0gCQkgICAgLyogQ3VzdG9tZXIgcHJp
dmF0ZSByYW5nZSAqLwotIAkJRU5VTV9CUkRfVFlQRV9DQVNFKENWTVhfQk9BUkRfVFlQRV9DVVNU
X1BSSVZBVEVfTUlOKQotIAkJRU5VTV9CUkRfVFlQRV9DQVNFKENWTVhfQk9BUkRfVFlQRV9VQk5U
X0UxMDApCi0rCQlFTlVNX0JSRF9UWVBFX0NBU0UoQ1ZNWF9CT0FSRF9UWVBFX1VCTlRfRTIwMCkK
LSsJCUVOVU1fQlJEX1RZUEVfQ0FTRShDVk1YX0JPQVJEX1RZUEVfVUJOVF9FMjIwKQotIAkJRU5V
TV9CUkRfVFlQRV9DQVNFKENWTVhfQk9BUkRfVFlQRV9DVVNUX0RTUjEwMDBOKQotIAkJRU5VTV9C
UkRfVFlQRV9DQVNFKENWTVhfQk9BUkRfVFlQRV9LT05UUk9OX1MxOTAxKQotIAkJRU5VTV9CUkRf
VFlQRV9DQVNFKENWTVhfQk9BUkRfVFlQRV9DVVNUX1BSSVZBVEVfTUFYKQotLS0tIGEvYXJjaC9t
aXBzL2Nhdml1bS1vY3Rlb24vZXhlY3V0aXZlL2N2bXgtaGVscGVyLWJvYXJkLmMKLSsrKyBiL2Fy
Y2gvbWlwcy9jYXZpdW0tb2N0ZW9uL2V4ZWN1dGl2ZS9jdm14LWhlbHBlci1ib2FyZC5jCi1AQCAt
MTczLDYgKzE3Myw4IEBAIGludCBjdm14X2hlbHBlcl9ib2FyZF9nZXRfbWlpX2FkZHJlc3MoaW4K
LSAJCQlyZXR1cm4gNyAtIGlwZF9wb3J0OwotIAkJZWxzZQotIAkJCXJldHVybiAtMTsKLSsJY2Fz
ZSBDVk1YX0JPQVJEX1RZUEVfVUJOVF9FMjAwOgotKwkJcmV0dXJuIC0xOwotIAljYXNlIENWTVhf
Qk9BUkRfVFlQRV9LT05UUk9OX1MxOTAxOgotIAkJaWYgKGlwZF9wb3J0ID09IENWTVhfSEVMUEVS
X0JPQVJEX01HTVRfSVBEX1BPUlQpCi0gCQkJcmV0dXJuIDE7CmRpZmYgLS1naXQgYS90YXJnZXQv
bGludXgvb2N0ZW9uL3BhdGNoZXMtNC4xNC8xMTAtZXIyMDAtZXRoZXJuZXRfcHJvYmVfb3JkZXIu
cGF0Y2ggYi90YXJnZXQvbGludXgvb2N0ZW9uL3BhdGNoZXMtNC4xNC8xMTAtZXIyMDAtZXRoZXJu
ZXRfcHJvYmVfb3JkZXIucGF0Y2gKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDZiMWVh
ZjkyYTJiMC4uMDAwMDAwMDAwMDAwCi0tLSBhL3RhcmdldC9saW51eC9vY3Rlb24vcGF0Y2hlcy00
LjE0LzExMC1lcjIwMC1ldGhlcm5ldF9wcm9iZV9vcmRlci5wYXRjaAorKysgL2Rldi9udWxsCkBA
IC0xLDM0ICswLDAgQEAKLS0tLSBhL2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24vZXRoZXJuZXQuYwot
KysrIGIvZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jCi1AQCAtNjczLDYgKzY3Myw3
IEBAIHN0YXRpYyBpbnQgY3ZtX29jdF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm0KLSAJaW50IGludGVy
ZmFjZTsKLSAJaW50IGZhdSA9IEZBVV9OVU1fUEFDS0VUX0JVRkZFUlNfVE9fRlJFRTsKLSAJaW50
IHFvczsKLSsJaW50IGk7Ci0gCXN0cnVjdCBkZXZpY2Vfbm9kZSAqcGlwOwotIAlpbnQgbXR1X292
ZXJoZWFkID0gRVRIX0hMRU4gKyBFVEhfRkNTX0xFTjsKLSAKLUBAIC03OTYsMTMgKzc5NywxOSBA
QCBzdGF0aWMgaW50IGN2bV9vY3RfcHJvYmUoc3RydWN0IHBsYXRmb3JtCi0gCX0KLSAKLSAJbnVt
X2ludGVyZmFjZXMgPSBjdm14X2hlbHBlcl9nZXRfbnVtYmVyX29mX2ludGVyZmFjZXMoKTsKLS0J
Zm9yIChpbnRlcmZhY2UgPSAwOyBpbnRlcmZhY2UgPCBudW1faW50ZXJmYWNlczsgaW50ZXJmYWNl
KyspIHsKLS0JCWN2bXhfaGVscGVyX2ludGVyZmFjZV9tb2RlX3QgaW1vZGUgPQotLQkJICAgIGN2
bXhfaGVscGVyX2ludGVyZmFjZV9nZXRfbW9kZShpbnRlcmZhY2UpOwotLQkJaW50IG51bV9wb3J0
cyA9IGN2bXhfaGVscGVyX3BvcnRzX29uX2ludGVyZmFjZShpbnRlcmZhY2UpOwotKwlmb3IgKGkg
PSAwOyBpIDwgbnVtX2ludGVyZmFjZXM7IGkrKykgewotKwkJY3ZteF9oZWxwZXJfaW50ZXJmYWNl
X21vZGVfdCBpbW9kZTsKLSsJCWludCBpbnRlcmZhY2U7Ci0rCQlpbnQgbnVtX3BvcnRzOwotIAkJ
aW50IHBvcnQ7Ci0gCQlpbnQgcG9ydF9pbmRleDsKLSAKLSsJCWludGVyZmFjZSA9IGk7Ci0rCQlp
ZiAoY3ZteF9zeXNpbmZvX2dldCgpLT5ib2FyZF90eXBlID09IENWTVhfQk9BUkRfVFlQRV9VQk5U
X0UyMDApCi0rCQkJaW50ZXJmYWNlID0gbnVtX2ludGVyZmFjZXMgLSAoaSArIDEpOwotKwotKwkJ
bnVtX3BvcnRzID0gY3ZteF9oZWxwZXJfcG9ydHNfb25faW50ZXJmYWNlKGludGVyZmFjZSk7Ci0r
CQlpbW9kZSA9IGN2bXhfaGVscGVyX2ludGVyZmFjZV9nZXRfbW9kZShpbnRlcmZhY2UpOwotIAkJ
Zm9yIChwb3J0X2luZGV4ID0gMCwKLSAJCSAgICAgcG9ydCA9IGN2bXhfaGVscGVyX2dldF9pcGRf
cG9ydChpbnRlcmZhY2UsIDApOwotIAkJICAgICBwb3J0IDwgY3ZteF9oZWxwZXJfZ2V0X2lwZF9w
b3J0KGludGVyZmFjZSwgbnVtX3BvcnRzKTsKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9vY3Rl
b24vcGF0Y2hlcy00LjE0LzE2MC1jbWRsaW5lLWhhY2sucGF0Y2ggYi90YXJnZXQvbGludXgvb2N0
ZW9uL3BhdGNoZXMtNC4xNC8xNjAtY21kbGluZS1oYWNrLnBhdGNoCmRlbGV0ZWQgZmlsZSBtb2Rl
IDEwMDY0NAppbmRleCBlOTAyZTg1M2U4MjAuLjAwMDAwMDAwMDAwMAotLS0gYS90YXJnZXQvbGlu
dXgvb2N0ZW9uL3BhdGNoZXMtNC4xNC8xNjAtY21kbGluZS1oYWNrLnBhdGNoCisrKyAvZGV2L251
bGwKQEAgLTEsNDcgKzAsMCBAQAotLS0tIGEvYXJjaC9taXBzL2Nhdml1bS1vY3Rlb24vc2V0dXAu
YwotKysrIGIvYXJjaC9taXBzL2Nhdml1bS1vY3Rlb24vc2V0dXAuYwotQEAgLTY1MCw2ICs2NTAs
MzUgQEAgdm9pZCBvY3Rlb25fdXNlcl9pb19pbml0KHZvaWQpCi0gCXdyaXRlX2MwX2RlcnJhZGRy
MSgwKTsKLSB9Ci0gCi0rI2lmZGVmIENPTkZJR19JTUFHRV9DTURMSU5FX0hBQ0sKLStleHRlcm4g
Y2hhciBfX2ltYWdlX2NtZGxpbmVbXTsKLSsKLStzdGF0aWMgaW50IF9faW5pdCBvY3Rlb25fdXNl
X2ltYWdlX2NtZGxpbmUodm9pZCkKLSt7Ci0rICAgICAgIGNoYXIgKnAgPSBfX2ltYWdlX2NtZGxp
bmU7Ci0rICAgICAgIGludCByZXBsYWNlID0gMDsKLSsKLSsgICAgICAgaWYgKCpwID09ICctJykg
ewotKyAgICAgICAgICAgICAgIHJlcGxhY2UgPSAxOwotKyAgICAgICAgICAgICAgIHArKzsKLSsg
ICAgICAgfQotKwotKyAgICAgICBpZiAoKnAgPT0gJ1wwJykKLSsgICAgICAgICAgICAgICByZXR1
cm4gMDsKLSsKLSsgICAgICAgaWYgKHJlcGxhY2UpIHsKLSsgICAgICAgICAgICAgICBzdHJsY3B5
KGFyY3NfY21kbGluZSwgcCwgc2l6ZW9mKGFyY3NfY21kbGluZSkpOwotKyAgICAgICB9IGVsc2Ug
ewotKyAgICAgICAgICAgICAgIHN0cmxjYXQoYXJjc19jbWRsaW5lLCAiICIsIHNpemVvZihhcmNz
X2NtZGxpbmUpKTsKLSsgICAgICAgICAgICAgICBzdHJsY2F0KGFyY3NfY21kbGluZSwgcCwgc2l6
ZW9mKGFyY3NfY21kbGluZSkpOwotKyAgICAgICB9Ci0rCi0rICAgICAgIHJldHVybiAxOwotK30K
LSsjZWxzZQotK3N0YXRpYyBpbmxpbmUgaW50IG9jdGVvbl91c2VfaW1hZ2VfY21kbGluZSh2b2lk
KSB7IHJldHVybiAwOyB9Ci0rI2VuZGlmCi0rCi0gLyoqCi0gICogRWFybHkgZW50cnkgcG9pbnQg
Zm9yIGFyY2ggc2V0dXAKLSAgKi8KLUBAIC04OTQsNiArOTIzLDggQEAgdm9pZCBfX2luaXQgcHJv
bV9pbml0KHZvaWQpCi0gCQl9Ci0gCX0KLSAKLSsJb2N0ZW9uX3VzZV9pbWFnZV9jbWRsaW5lKCk7
Ci0rCi0gCWlmIChzdHJzdHIoYXJjc19jbWRsaW5lLCAiY29uc29sZT0iKSA9PSBOVUxMKSB7Ci0g
CQlpZiAob2N0ZW9uX3VhcnQgPT0gMSkKLSAJCQlzdHJjYXQoYXJjc19jbWRsaW5lLCAiIGNvbnNv
bGU9dHR5UzEsMTE1MjAwIik7CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvb2N0ZW9uL3BhdGNo
ZXMtNC4xNC8xNzAtY2lzY28taGFjay5wYXRjaCBiL3RhcmdldC9saW51eC9vY3Rlb24vcGF0Y2hl
cy00LjE0LzE3MC1jaXNjby1oYWNrLnBhdGNoCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRl
eCA3Mjc3NDIwOWRjMzUuLjAwMDAwMDAwMDAwMAotLS0gYS90YXJnZXQvbGludXgvb2N0ZW9uL3Bh
dGNoZXMtNC4xNC8xNzAtY2lzY28taGFjay5wYXRjaAorKysgL2Rldi9udWxsCkBAIC0xLDMxICsw
LDAgQEAKLUZyb20gcGF0Y2h3b3JrIFdlZCBKdW4gIDggMTM6NDk6MjYgMjAxNgotQ29udGVudC1U
eXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PSJ1dGYtOCIKLU1JTUUtVmVyc2lvbjogMS4wCi1Db250
ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0Ci1TdWJqZWN0OiBbTEVERS1ERVZdIGNhdml1bTog
SWdub3JlIE1FTSBib290IHBhcmFtIHdoZW4gdG9vIHNtYWxsCi1Gcm9tOiA9P3V0Zi04P3E/TWlj
aGE9QzU9ODJfT3Nvd2llY2tpPz0gPG1pY2hhbC5vc293aWVja2lAZ21haWwuY29tPgotWC1QYXRj
aHdvcmstSWQ6IDYzMjI3MwotTWVzc2FnZS1JZDogPDU3NTgyMjY2LjgwMjAxMDVAZ21haWwuY29t
PgotVG86IGxlZGUtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKLURhdGU6IFdlZCwgOCBKdW4gMjAx
NiAxNTo0OToyNiArMDIwMAotCi1DaXNjbyBSVjBYWCB1LWJvb3Qgc2V0cyBNRU09MjA0OCBhcyBi
b290IHBhcmFtLiBXZSBhc3N1bWUgdGhhdCBhdCBsZWFzdCAKLTRNQiAobWVtX2FsbG9jX3NpemUp
IG9mIHJhbSBpcyBuZWVkZWQgdG8gcnVuIGxpbnV4IG9uIGNhdml1bSBib2FyZHMsIHNvIAotaWYg
bWVtIDwgNE0gLSBpZ25vcmUgaXQgYW5kIHNldCBkZWZhdWx0IHZhbHVlCi0KLQotU2lnbmVkLW9m
Zi1ieTogTWljaGHFgiBPc293aWVja2kgPG1pY2hhbC5vc293aWVja2lAZ21haWwuY29tPgotCi0t
LS0gYS9hcmNoL21pcHMvY2F2aXVtLW9jdGVvbi9zZXR1cC5jCi0rKysgYi9hcmNoL21pcHMvY2F2
aXVtLW9jdGVvbi9zZXR1cC5jCi1AQCAtMTAxOCw2ICsxMDE4LDEwIEBAIHZvaWQgX19pbml0IHBs
YXRfbWVtX3NldHVwKHZvaWQpCi0gCWlmIChtZW1fYWxsb2Nfc2l6ZSA+IG1heF9tZW1vcnkpCi0g
CQltZW1fYWxsb2Nfc2l6ZSA9IG1heF9tZW1vcnk7Ci0gCi0rCS8qIElnbm9yZSBib290YXJnIE1F
TSA8PSA0TUIgLSBjaXNjbyB1c2VzIGEgYjBya2VkIHVib290IGVudiBvbiB0aGVpciBwcm9kdWN0
cyAqLwotKwlpZiAobWF4X21lbW9yeSA8PSBtZW1fYWxsb2Nfc2l6ZSkKLSsJCW1heF9tZW1vcnkg
PSA1MTJ1bGwgPDwgMjA7Ci0rCi0gLyogQ3Jhc2hrZXJuZWwgaWdub3JlcyBib290bWVtIGxpc3Qu
IEl0IHJlbGllcyBvbiBtZW09WEBZIG9wdGlvbiAqLwotICNpZmRlZiBDT05GSUdfQ1JBU0hfRFVN
UAotIAlhZGRfbWVtb3J5X3JlZ2lvbihyZXNlcnZlX2xvd19tZW0sIG1heF9tZW1vcnksIEJPT1Rf
TUVNX1JBTSk7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
