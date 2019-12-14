Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426AF11F4D9
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 23:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/mlSCkwUf7Mc8sEwG/Ux1mRrYkxmnMehnFZFDRFjiA=; b=bnSvm6O7hqUKcv
	RQ5haObYd7GCAz9lK92PBFL9mZUIEYYi5kK4/JyQlct/jyDQq1KU9M4EA7uOfwsR9GAUBoR2CflFu
	ZW4radEEt1oepXzw5aLccTid1ER4abSstn/DfUxo4xsK0p7gYkTRSZTPDOT5ExQJQ47DwTjCkaJfZ
	WEBIEFeMPnX57riKkjA5n5KqbW6ATmQ0o0h0q1C9ug0SU6p4SYznbS7p+BNeSwqRTg5zhNLrXEpiB
	mByrZRYyzS93bjwEf4AH5o5opIq+fXYD31YlnMhQ5wq/W/eb7vzEl6WtM/piqUxYGG4MYly6Nqdna
	Q9gt0qzYDLbWO+Tsg8Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igFnH-00020X-6q; Sat, 14 Dec 2019 22:21:47 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igFnA-000203-Go
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 22:21:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576362093;
 bh=VYXV0wMJKTgys4tLt69GIfnOs6M/35fp8XUaEqlpoig=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=UmSvSOAbugqxz65ctYG79XONCd6GWc0eSZgsYNAz3WeXmN3bDom2tJxEBMRM0Dh/P
 +M+oPPnWibvvIUJOlYGXlplHF5Hb3bztai+iRrjFAGb9ZTsn6VWjrOAEp4DqQHU7E0
 SCX9jGQtK1IdOoll484KCMWC7FmTyVCFFcLyKLJ8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.66.236]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MJE6F-1iR4YI07Tf-00KiOU; Sat, 14
 Dec 2019 23:21:33 +0100
Date: Sat, 14 Dec 2019 23:21:31 +0100
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191214222129.GA8313@darth.lan>
Mail-Followup-To: openwrt-devel@lists.openwrt.org,
 Rosen Penev <rosenp@gmail.com>
References: <20191117214204.293611-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191117214204.293611-1-rosenp@gmail.com>
X-Provags-ID: V03:K1:MjK1EUKLoGcm96ViYImhk9P12pLx/AsT6hkHv4jPivDXSsZAIFw
 NUIK9HqmnCVREyXYqEPlDWVqm/QbMn3lkaYG1M9olrMTjwDotK0RByR+P11z9eEM00vB1h5
 BmctG8W+OntS7qqFPS+gRBvAaHN4sE1xduwvt60hXMaEhtmmJqN5KRSkx8j7haLrrRvj6dx
 BWMysGVAKNRHSgFgsIp/Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:r7OokYLcl4s=:WXMMY4nrvmenmkp2+yPpuP
 hxp2dV8weaLbSjCC/L9ipGlMFyigRTJ9yDxDnbNfn/h/2rHBX8fvi0hCf8J/MIWu/Gcm0+NdE
 Cl0cGQuNZcUnAc4pIqrQBzLokn415zDRmfoDa5D1tQ7Nl1fcGKY4VXy6AOKEbcHwvji+7Mtb6
 ugMdQxfYY4Ya9GAyZzmZcO6IIJ2g+G64zFyYQyWol/xxcr5RoaCyiQhqOQErlKZMH1Qk9mRTd
 OsEsT0olREz2mcVJGrB02rgZz0K0gXo+pCd4Tk40DJORcOjBRBrwRQcOp4tp9k1G0j2Sw0sV6
 3WQSKH6xckVmnbHnIjGWhlOn44LyFr8yi8fBYsKgpNHK/ESpRrn+yuxRaMnLd3PUsKbPyEzHG
 jCN3veWwUt1FD5Mu8AA2t2ningiuycOxT4Oeb1j6+UXiavR+pnHiOrolegp+Qt80I7xuQB+Kh
 I9TKHp5j1wAyQawMG0keiBo8UZGMW0vGosoLkpzPNXFeFhbGD7yxMtOVylt94CbDwgFF6Q6Yk
 4p3I2WS07w+MRmbQpuv+kLcxD6gZWwm4AAX0goWMtatwXDCroYhYmfWrQqMw0awOQbS3VO6yc
 e39wKqsLoZMERIwYZb0fL4ktIOdssr2SeKaFPZmlhso8y8T3YE5BvnL0/91jVkRdfKjc7XhNo
 EzIypph3Ilbg2VciU2D0Jy9gU7e0K7bs69UVJEkAh0I5H/3NTxbTFUtN8k65JokHAy0W87vtZ
 lE22dVVhk4ViKtqCUVbliS+GvMr/sEhOEMIu0kgzqlRzEgGuGyvxE+zl4IGNYpFlANf+Rn7ul
 5eX1t56VCj0zD1wSKI1UyztQM8COnAu3I3+4Wzcn0kEFym02LFBNqQhYrCt7z+NcvsYuPDOg0
 c8BnkfgdJ51QrSsggjDmpBe/gn2oQ5h7/ZPSZWaLTqe6WH2k8D/I/pe1RQjiKaaL/5h6RZjCt
 3k65woaY/BsDz9qETvkcCJqCxzI42kGkhC1ZYON1HAJDj0Rax8b+MR/h9POhM3bhTuMysKsVY
 dbYlpVSYrQshGVHyDmlcF1BUqU6UB6eE825OGBdtaL3qeXpsQn5fI1T8coWB2g1Q5ApW10o12
 BBxOe8CPXSOXpJ+rGv7ze6WybISQZe0va0RAuP5EMwiv17F4I4AJGqNQeywQSnrQh0WA5ycb7
 vnThF3MnwEmeeXX9P30nBRkl6iinSQgF5+MT+bzyDOlETmF+JEZ7Qk5YUNz7dSvjmgZbDM4D7
 1nMbBlL5jMqqULcV4bzN6tI07KXmNydDAJjeGKn5fzEHc8cKdFnEYo3zsnh0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_142140_889773_C1A2C954 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] cmake: Install host packages to lib
 instead of lib64
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
Cc: Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Nov 17, 2019 at 01:42:04PM -0800, Rosen Penev wrote:
> Several CMake packages such as log4cplus and protobuf(-c) install to
> lib64 instead of lib on some hosts. This completely breaks rpath linking.
> Override it globally to avoid fixing each package individually.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  include/cmake.mk | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/include/cmake.mk b/include/cmake.mk
> index a304ab3f70..2726b83a1e 100644
> --- a/include/cmake.mk
> +++ b/include/cmake.mk
> @@ -103,6 +103,7 @@ define Host/Configure/Default
>  			-DCMAKE_INSTALL_PREFIX=$(HOST_BUILD_PREFIX) \
>  			-DCMAKE_PREFIX_PATH=$(HOST_BUILD_PREFIX) \
>  			-DCMAKE_SKIP_RPATH=TRUE  \
> +			-DCMAKE_INSTALL_LIBDIR=lib \
>  			$(CMAKE_HOST_OPTIONS) \
>  		$(HOST_CMAKE_SOURCE_DIR) \
>  	)

This works fine and solves the problem, tested with protobuf/host.

Thanks Rosen!

Tested-by: Sebastian Kemper <sebastian_ml@gmx.net>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
