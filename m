Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998BA1E0694
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 07:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A2MvIrKYOptBX4K0e3fzCDwvFdwPQHD7aVp1PVSz8jI=; b=Js5CMblzkciXmeTXieLQ6HN9o
	SkznsFsaJZTqkHUuzQwASqhjEMmxMnudLhk0oHZFw2SluOSFY/VJpChAE9AeG1QICf+Dmu5I46q2F
	hJBhOJcwrVKhUaLD9pmiQ9u8PMf4ZUqIsooPba/Csld3Jd0vl9t2eX6clZ8cAq5fMn9bkQQ6b6BLG
	KpPRc5ep7UOFZiGbcA2OfTeTtLRfwwO7cmxmfucuhKuK8RX6euSGRBekDHgV0SDLw5vRLYfbvfrDd
	+u+h0D3/7taTx5Aadmd+GHnoEZx2ziD1z/1kHJASkTE1USPIdWGbQNpSpNgiUbbpJz5qvHp+nttC7
	aYnhSV/5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd65O-0000iu-4V; Mon, 25 May 2020 05:55:42 +0000
In-Reply-To: <20200522120650.64ec263e@meshplusplus.com>
Date: Mon, 25 May 2020 15:55:25 +1000
References: <20200522120650.64ec263e@meshplusplus.com>
To: Alex Ballmer <alexb@meshplusplus.com>
MIME-Version: 1.0
Message-ID: <mailman.16487.1590386138.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Nick via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: "ModemManager \(development\)" <modemmanager-devel@lists.freedesktop.org>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Nick <mips171@icloud.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Issue connecting with Quectel EM20-G modem on
 openwrt
Content-Type: multipart/mixed; boundary="===============1276989246872250156=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1276989246872250156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1276989246872250156==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from ms11p00im-qufo17281401.me.com ([17.58.38.51])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd65J-0000iM-1K
	for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 05:55:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1590386130;
	bh=xF2vEzO3yNEoCbH9PgHt5OiANxOSJBTPR3zuMvU6/gE=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=CFdX9F7cUEo7/I4ZYEMPqfcuJsvJf7uWUEJh7IhL/JIEA21ZA11kp87lU/rb3qlak
	 0KT2863uIHJVhJkftHhMDb4Qbtfq6ZIYWcid3n+NmVmlsMfL/Cje5FckoeHwpeUfM1
	 htHIIWv0b+4ptowHvAt5Sa1tml7vPWNkHBms5l7TFZRdSaBB3Ovla+FK7vylrdMla6
	 w1WFcbhAp2mKaK35phaGDvoBJ7yhnVuu05epRwtevBOacSOWF7dXKWvUPxdOyg8k+7
	 yPUn+OOFf1Wo+y9XDEMcLZfS9gBy7hqdV2XEpPfUA4QlKyMWGaytqNCBqdFk/WtK3c
	 OgUA8nhoZJgdA==
Received: from nicksworkmbp2.lan (unknown [120.157.35.123])
	by ms11p00im-qufo17281401.me.com (Postfix) with ESMTPSA id 5EC18BC0232;
	Mon, 25 May 2020 05:55:29 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: Issue connecting with Quectel EM20-G modem on openwrt
From: Nick <mips171@icloud.com>
In-Reply-To: <20200522120650.64ec263e@meshplusplus.com>
Date: Mon, 25 May 2020 15:55:25 +1000
Cc: "ModemManager (development)" <modemmanager-devel@lists.freedesktop.org>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <1D098C5B-AB9C-4B17-9468-7B597F79B708@icloud.com>
References: <20200522120650.64ec263e@meshplusplus.com>
To: Alex Ballmer <alexb@meshplusplus.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.676
 definitions=2020-05-25_02:2020-05-22,2020-05-25 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=547 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2002250000 definitions=main-2005250049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_225537_099924_837464DB 
X-CRM114-Status: UNSURE (   5.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.38.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [mips171[at]icloud.com]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [mips171[at]icloud.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [17.58.38.51 listed in wl.mailspike.net]

FWIW, I=E2=80=99m able to use this modem just fine on a USB3.0 M.2 slot =
with the current version of MM and libqmi.  Let me know if you need any =
details.=


--===============1276989246872250156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1276989246872250156==--
