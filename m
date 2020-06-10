Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC071F5DB3
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 23:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4WloYHw3CBa2wgfbRuRhM/IRtiteEerTOdeAJLMrji0=; b=ESkG+6kUzwYbLT
	0NnTf9DI6RDxKlLsZsIjKM/DcorGuKY+5lq97Gb1wg87ljc8TUrcQW+OwS5FWCH5ZHilYxgKeL+BR
	eNV39lAjk5mF0rLvg4+D/wbsIE5JiBvnRrzEn7eHUyEa0pYAjRYOiozseYnlB7msQFVXX08qISBtj
	glm1meVmBPEEVUCvxJlTYv1wqL+5aYQ5wQD5v7tpVMyyBq/vRHGFU5R6SZn7vfc8/cACekQ3x/eXs
	WB8cwDepSz2Zh0Qf19UeeYss3S46UK+QAO9XW+04lD7eukd5ATygKnUfp1bZnDS0nx0z88cDpEEoC
	pFInMrM0tZJIKFWzh6SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj8KJ-0001XO-Na; Wed, 10 Jun 2020 21:32:03 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj8KB-0001Wv-R9
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 21:31:57 +0000
Received: by mail-ej1-x62f.google.com with SMTP id l12so4211892ejn.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 10 Jun 2020 14:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:mime-version:from:to:subject
 :content-transfer-encoding;
 bh=Pj+Ih/DY1A0IbZceR+CvRrgxHJXhfZECQYG2FiNKPRc=;
 b=st/IUHOkOE+LEa2dKlBGysHH5s85SOEJba1FyTXu+TvdOzv7zoQKRMdY7M1gHPiWIL
 oAKjeNmRISIVv4f5y1WL0jcQWPTpOyRYoegwlyein+lWokA3jg99s/hZMB7kj9UzVzZH
 tL+ZFM8SuVTU9jWL59MjUU1jarlvfyKbFFZV21Cu3+a8kRxMzGhn00za5kewXTQhzJFH
 4cXmucxs0cAIOjjsxX+ZZLsDtCpzwbV1Rr4uQkwh9zFIhLAtIe4IL+HGz8efXfA6i7Bj
 9364xX98HahIrtyToQ4S2sKSnm6ZQkDXzZxQyBLlRz3RnBRDRlpfX7bsFSuSzrchjVkF
 dqqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version:from:to:subject
 :content-transfer-encoding;
 bh=Pj+Ih/DY1A0IbZceR+CvRrgxHJXhfZECQYG2FiNKPRc=;
 b=ep6VxY1hxH5AKbfMcIAYjN8E50xBv2RwHQb0C6qKkPVPi08RMXMng21WsYXt67TBOu
 3ejQv3depkxsGuoSJK0BRT4sZUj7KJTALsQirlB6sEKEg6FTyXAqBW1cmi7RxZacBI+M
 wP16BUYbRLgB8IT+D8D5H211APDS3aTG+LpoS2BqZstXVH8L8B3hozhdRBmf++JwXEx1
 OlxG3aFOJtglDoARvpOKDfP55WVRVtKmLIiwLz3mT1p8i14t6FAxBCtXUsUViucwmBKm
 6K6qltb4EcJtvOw6csC1/3ZTzBR3ZBQIUoowXxZeZo2uYwFXKCCfNG48XfhiW8kOBtGm
 3mKA==
X-Gm-Message-State: AOAM532fLdMMzQNS0sKmIvkdTPsr2blYrIUl7htMHOgF2Cy9XQ2cwWup
 6kIColZzlXWWE2+LjAinxhjFAn6+
X-Google-Smtp-Source: ABdhPJxtLcRmmLJJqoOaYLGQdEanD6Iw5M6bdBBQUGJkJgseLmInuFjZBqZfpShi+9weKaBVds2nrw==
X-Received: by 2002:a17:906:6a92:: with SMTP id
 p18mr5224789ejr.233.1591824708391; 
 Wed, 10 Jun 2020 14:31:48 -0700 (PDT)
Received: from toshiba ([39.50.61.101])
 by smtp.gmail.com with ESMTPSA id o16sm650586ejg.106.2020.06.10.14.31.47
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jun 2020 14:31:48 -0700 (PDT)
Message-ID: <5ee15144.1c69fb81.7ec4d.17c9@mx.google.com>
Date: Wed, 10 Jun 2020 14:31:48 -0700 (PDT)
X-Google-Original-Date: 12 Jun 2020 02:31:57 +0500
MIME-Version: 1.0
From: "Nafees Mushtaq" <nafeesmushtaq871@gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_143155_891714_2726F6B3 
X-CRM114-Status: UNSURE (   2.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nafeesmushtaq871[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [nafeesmushtaq871[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Proposal for Luci.AI Inc.
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

SGksIEkgYW0gYSBzb2Z0d2FyZSBlbmdpbmVlcmluZyBjb25zdWx0YW50LiBJIHdhbnQgdG8gY29u
dGFjdCB0aGUgaGlyaW5nIG1hbmFnZXIgb3IgQ0VPIG9mICJMdWNpLkFJIEluYy4iLiBJIGNhbiBo
ZWxwIHlvdSB3aXRoIG15IGVuZ2luZWVyaW5nIHNlcnZpY2UuIEkgYW0gYSBTci5EZXZlbG9wZXIg
d2l0aCA3IHllYXJzIG9mIGV4cGVyaWVuY2UuIEkgY2FuIGNyZWF0ZSBhIG1hbmFnZW1lbnQgc3lz
dGVtLCBwb3J0YWwsIG1vYmlsZSBhcHBsaWNhdGlvbiBvciBhIHdlYnNpdGUgZm9yICJMdWNpLkFJ
IEluYy4iLg0KDQotIFNpZ24gQWdyZWVtZW50IChOREEpIGZvciBkYXRhIGFuZCBjb250ZW50IHBy
b3RlY3Rpb24uDQotIFBheSBvbmx5IGZvciB0aGUgd29yayBkb25lIGFuZCBkZWxpdmVyZWQuDQot
IEZhc3QgZGVsaXZlcnkgb2YgdGhlIHByb2R1Y3Qgd2l0aCBkYWlseSByZXBvcnRzLiANCi0gRWFz
eSBjb29yZGluYXRpb24gdGhyb3VnaCBzY3JlZW4gc2hhcmluZyB0b29scy4NCi0gUG9ydGZvbGlv
OiBodHRwOi8vTmFmZWVzTXVzaHRhcS5jb20NCi0gTGlua2VkaW46IGh0dHBzOi8vbGlua2VkaW4u
Y29tL2luL25hZmVlc211c2h0YXENCg0KSSB3aWxsIGJlIG1vcmUgdGhhbiBoYXBweSB0byBhbnN3
ZXIgYW55IHF1ZXN0aW9ucyB5b3UgbWlnaHQgaGF2ZS4NCkhhdmUgYW4gYXdlc29tZSBkYXkhDQoN
ClJlZ2FyZHMsDQpOYWZlZXMgTXVzaHRhcQ0KQ2VsbDogKzkyIDMzNiA5OTQwNTY3DQpTa3lwZTog
bmFmZWVzLm11c2h0YXENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCg0KDQoNCg0KDQoNCg0KDQpgTHVjaS5BSSBJbmMuIEpv
YjoKTGVhZCBhIGNyZWF0aXZlIHRlYW0gdG8gYnVpbGQgZnVsbC1zdGFjayB3ZWIgYXBwbGljYXRp
b25zLg0KUGFydGljaXBhdGUgaW4gcmVxdWlyZW1lbnRzIGFuYWx5c2lzLCBzeXN0ZW0gZGVzaWdu
LCBhbmQgaW1wbGVtZW50YXRpb24gb2YgYmFjay1lbmQgc3lzdGVtcyBmcm9tIHRoZeKApgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
